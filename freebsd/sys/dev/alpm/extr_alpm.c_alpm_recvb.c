
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alpm_softc {int dummy; } ;
typedef int device_t ;


 int ALPM_DEBUG (int ) ;
 int ALPM_LOCK (struct alpm_softc*) ;
 char ALPM_SMBINB (struct alpm_softc*,int ) ;
 int ALPM_SMBOUTB (struct alpm_softc*,int ,int) ;
 int ALPM_UNLOCK (struct alpm_softc*) ;
 int LSB ;
 int SMBCMD ;
 int SMBHADDR ;
 int SMBHDATA ;
 int SMBSRBYTE ;
 int SMBSTART ;
 int SMB_EBUSY ;
 int SMB_ENOERR ;
 int alpm_clear (struct alpm_softc*) ;
 int alpm_idle (struct alpm_softc*) ;
 int alpm_wait (struct alpm_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,char,int) ;

__attribute__((used)) static int
alpm_recvb(device_t dev, u_char slave, char *byte)
{
 struct alpm_softc *sc = (struct alpm_softc *)device_get_softc(dev);
 int error;

 ALPM_LOCK(sc);
 alpm_clear(sc);
 if (!alpm_idle(sc)) {
  ALPM_UNLOCK(sc);
  return (SMB_EBUSY);
 }

 ALPM_SMBOUTB(sc, SMBHADDR, slave | LSB);
 ALPM_SMBOUTB(sc, SMBCMD, SMBSRBYTE);
 ALPM_SMBOUTB(sc, SMBSTART, 0xff);

 if ((error = alpm_wait(sc)) == SMB_ENOERR)
  *byte = ALPM_SMBINB(sc, SMBHDATA);

 ALPM_DEBUG(printf("alpm: RECVB from 0x%x, byte=0x%x, error=0x%x\n", slave, *byte, error));
 ALPM_UNLOCK(sc);

 return (error);
}
