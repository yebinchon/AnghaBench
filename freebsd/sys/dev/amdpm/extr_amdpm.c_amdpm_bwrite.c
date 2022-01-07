
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
typedef int u_char ;
struct amdpm_softc {int dummy; } ;
typedef int device_t ;


 int AMDPM_DEBUG (int ) ;
 int AMDPM_LOCK (struct amdpm_softc*) ;
 int AMDPM_SMBINW (struct amdpm_softc*,int ) ;
 int AMDPM_SMBOUTB (struct amdpm_softc*,int ,char) ;
 int AMDPM_SMBOUTW (struct amdpm_softc*,int ,int) ;
 int AMDPM_UNLOCK (struct amdpm_softc*) ;
 int AMDSMB_GE_CYC_BLOCK ;
 int AMDSMB_GE_HOST_STC ;
 int AMDSMB_GLOBAL_ENABLE ;
 int AMDSMB_HSTADDR ;
 int AMDSMB_HSTCMD ;
 int AMDSMB_HSTDATA ;
 int AMDSMB_HSTDFIFO ;
 int DELAY (int) ;
 int LSB ;
 int SMB_EBUSY ;
 int SMB_EINVAL ;
 int amdpm_clear (struct amdpm_softc*) ;
 int amdpm_idle (struct amdpm_softc*) ;
 int amdpm_wait (struct amdpm_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,int,char,int) ;

__attribute__((used)) static int
amdpm_bwrite(device_t dev, u_char slave, char cmd, u_char count, char *buf)
{
 struct amdpm_softc *sc = (struct amdpm_softc *)device_get_softc(dev);
 u_char i;
 int error;
 u_short l;

 if (count < 1 || count > 32)
  return (SMB_EINVAL);

 AMDPM_LOCK(sc);
 amdpm_clear(sc);
 if (!amdpm_idle(sc)) {
  AMDPM_UNLOCK(sc);
  return (SMB_EBUSY);
 }

 AMDPM_SMBOUTW(sc, AMDSMB_HSTADDR, slave & ~LSB);





 AMDPM_SMBOUTW(sc, AMDSMB_HSTDATA, count);


 for (i = 0; i < count; i++) {
  AMDPM_SMBOUTB(sc, AMDSMB_HSTDFIFO, buf[i]);
  DELAY(2);
 }
 AMDPM_SMBOUTB(sc, AMDSMB_HSTCMD, cmd);
 l = AMDPM_SMBINW(sc, AMDSMB_GLOBAL_ENABLE);
 AMDPM_SMBOUTW(sc, AMDSMB_GLOBAL_ENABLE,
     (l & 0xfff8) | AMDSMB_GE_CYC_BLOCK | AMDSMB_GE_HOST_STC);

 error = amdpm_wait(sc);

 AMDPM_DEBUG(printf("amdpm: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x", slave, count, cmd, error));
 AMDPM_UNLOCK(sc);

 return (error);
}
