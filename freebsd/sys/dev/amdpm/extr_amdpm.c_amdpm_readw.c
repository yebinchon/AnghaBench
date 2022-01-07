
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
 void* AMDPM_SMBINW (struct amdpm_softc*,int ) ;
 int AMDPM_SMBOUTB (struct amdpm_softc*,int ,char) ;
 int AMDPM_SMBOUTW (struct amdpm_softc*,int ,int) ;
 int AMDPM_UNLOCK (struct amdpm_softc*) ;
 int AMDSMB_GE_CYC_WDATA ;
 int AMDSMB_GE_HOST_STC ;
 int AMDSMB_GLOBAL_ENABLE ;
 int AMDSMB_HSTADDR ;
 int AMDSMB_HSTCMD ;
 int AMDSMB_HSTDATA ;
 int LSB ;
 int SMB_EBUSY ;
 int SMB_ENOERR ;
 int amdpm_clear (struct amdpm_softc*) ;
 int amdpm_idle (struct amdpm_softc*) ;
 int amdpm_wait (struct amdpm_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,char,short,int) ;

__attribute__((used)) static int
amdpm_readw(device_t dev, u_char slave, char cmd, short *word)
{
 struct amdpm_softc *sc = (struct amdpm_softc *)device_get_softc(dev);
 int error;
 u_short l;

 AMDPM_LOCK(sc);
 amdpm_clear(sc);
 if (!amdpm_idle(sc)) {
  AMDPM_UNLOCK(sc);
  return (SMB_EBUSY);
 }

 AMDPM_SMBOUTW(sc, AMDSMB_HSTADDR, slave | LSB);
 AMDPM_SMBOUTB(sc, AMDSMB_HSTCMD, cmd);
 l = AMDPM_SMBINW(sc, AMDSMB_GLOBAL_ENABLE);
 AMDPM_SMBOUTW(sc, AMDSMB_GLOBAL_ENABLE, (l & 0xfff8) | AMDSMB_GE_CYC_WDATA | AMDSMB_GE_HOST_STC);

 if ((error = amdpm_wait(sc)) == SMB_ENOERR)
  *word = AMDPM_SMBINW(sc, AMDSMB_HSTDATA);

 AMDPM_DEBUG(printf("amdpm: READW from 0x%x, cmd=0x%x, word=0x%x, error=0x%x\n", slave, cmd, *word, error));
 AMDPM_UNLOCK(sc);

 return (error);
}
