
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alpm_softc {int dummy; } ;
typedef int device_t ;


 int ALPM_DEBUG (int ) ;
 int ALPM_LOCK (struct alpm_softc*) ;
 int ALPM_SMBOUTB (struct alpm_softc*,int ,int) ;
 int ALPM_UNLOCK (struct alpm_softc*) ;
 int DELAY (int) ;
 int LSB ;
 int SMBCMD ;
 int SMBHADDR ;
 int SMBHBLOCK ;
 int SMBHCMD ;
 int SMBHDATA ;
 int SMBSTART ;
 int SMBWRBLOCK ;
 int SMB_BLK_CLR ;
 int SMB_EBUSY ;
 int SMB_EINVAL ;
 int alpm_clear (struct alpm_softc*) ;
 int alpm_idle (struct alpm_softc*) ;
 int alpm_wait (struct alpm_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,int,char,int) ;

__attribute__((used)) static int
alpm_bwrite(device_t dev, u_char slave, char cmd, u_char count, char *buf)
{
 struct alpm_softc *sc = (struct alpm_softc *)device_get_softc(dev);
 u_char i;
 int error;

 if (count < 1 || count > 32)
  return (SMB_EINVAL);

 ALPM_LOCK(sc);
 alpm_clear(sc);
 if(!alpm_idle(sc)) {
  ALPM_UNLOCK(sc);
  return (SMB_EBUSY);
 }

 ALPM_SMBOUTB(sc, SMBHADDR, slave & ~LSB);



 ALPM_SMBOUTB(sc, SMBCMD, SMBWRBLOCK | SMB_BLK_CLR);

 ALPM_SMBOUTB(sc, SMBHDATA, count);


 for (i = 0; i < count; i++) {
  ALPM_SMBOUTB(sc, SMBHBLOCK, buf[i]);
  DELAY(2);
 }
 ALPM_SMBOUTB(sc, SMBHCMD, cmd);
 ALPM_SMBOUTB(sc, SMBSTART, 0xff);

 error = alpm_wait(sc);

 ALPM_DEBUG(printf("alpm: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x", slave, count, cmd, error));
 ALPM_UNLOCK(sc);

 return (error);
}
