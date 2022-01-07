
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nfsmb_softc {int dummy; } ;
typedef int device_t ;


 int NFSMB_DEBUG (int ) ;
 int NFSMB_LOCK (struct nfsmb_softc*) ;
 int NFSMB_SMBINB (struct nfsmb_softc*,scalar_t__) ;
 int NFSMB_SMBOUTB (struct nfsmb_softc*,int ,int) ;
 int NFSMB_UNLOCK (struct nfsmb_softc*) ;
 int SMB_ADDR ;
 scalar_t__ SMB_BCNT ;
 int SMB_CMD ;
 scalar_t__ SMB_DATA ;
 int SMB_EINVAL ;
 int SMB_ENOERR ;
 int SMB_PRTCL ;
 int SMB_PRTCL_BLOCK_DATA ;
 int SMB_PRTCL_READ ;
 scalar_t__ device_get_softc (int ) ;
 int nfsmb_wait (struct nfsmb_softc*) ;
 int printf (char*,int,int,char,int) ;

__attribute__((used)) static int
nfsmb_bread(device_t dev, u_char slave, char cmd, u_char *count, char *buf)
{
 struct nfsmb_softc *sc = (struct nfsmb_softc *)device_get_softc(dev);
 u_char data, len, i;
 int error;

 if (*count < 1 || *count > 32)
  return (SMB_EINVAL);

 NFSMB_LOCK(sc);
 NFSMB_SMBOUTB(sc, SMB_CMD, cmd);
 NFSMB_SMBOUTB(sc, SMB_ADDR, slave);
 NFSMB_SMBOUTB(sc, SMB_PRTCL, SMB_PRTCL_READ | SMB_PRTCL_BLOCK_DATA);

 if ((error = nfsmb_wait(sc)) == SMB_ENOERR) {
  len = NFSMB_SMBINB(sc, SMB_BCNT);
  for (i = 0; i < len; i++) {
   data = NFSMB_SMBINB(sc, SMB_DATA + i);
   if (i < *count)
    buf[i] = data;
  }
  *count = len;
 }

 NFSMB_DEBUG(printf("nfsmb: READBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x", slave, *count, cmd, error));
 NFSMB_UNLOCK(sc);

 return (error);
}
