
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alpm_softc {int dummy; } ;
typedef int device_t ;


 int ALPM_DEBUG (int ) ;
 int ALPM_LOCK (struct alpm_softc*) ;
 int ALPM_SMBINB (struct alpm_softc*,int ) ;
 int ALPM_SMBOUTB (struct alpm_softc*,int ,int) ;
 int ALPM_UNLOCK (struct alpm_softc*) ;
 int LSB ;
 int SMBCMD ;
 int SMBHADDR ;
 int SMBHCMD ;
 int SMBHDATA ;
 int SMBHDATB ;
 int SMBSTART ;
 int SMBWRWORD ;
 int SMB_EBUSY ;
 int SMB_ENOERR ;
 int alpm_clear (struct alpm_softc*) ;
 int alpm_idle (struct alpm_softc*) ;
 int alpm_wait (struct alpm_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,char,short,int) ;

__attribute__((used)) static int
alpm_readw(device_t dev, u_char slave, char cmd, short *word)
{
 struct alpm_softc *sc = (struct alpm_softc *)device_get_softc(dev);
 int error;
 u_char high, low;

 ALPM_LOCK(sc);
 alpm_clear(sc);
 if (!alpm_idle(sc)) {
  ALPM_UNLOCK(sc);
  return (SMB_EBUSY);
 }

 ALPM_SMBOUTB(sc, SMBHADDR, slave | LSB);
 ALPM_SMBOUTB(sc, SMBCMD, SMBWRWORD);
 ALPM_SMBOUTB(sc, SMBHCMD, cmd);
 ALPM_SMBOUTB(sc, SMBSTART, 0xff);

 if ((error = alpm_wait(sc)) == SMB_ENOERR) {
  low = ALPM_SMBINB(sc, SMBHDATA);
  high = ALPM_SMBINB(sc, SMBHDATB);

  *word = ((high & 0xff) << 8) | (low & 0xff);
 }

 ALPM_DEBUG(printf("alpm: READW from 0x%x, cmd=0x%x, word=0x%x, error=0x%x\n", slave, cmd, *word, error));
 ALPM_UNLOCK(sc);

 return (error);
}
