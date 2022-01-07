
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
 int SMB_CMD ;
 scalar_t__ SMB_DATA ;
 int SMB_ENOERR ;
 int SMB_PRTCL ;
 int SMB_PRTCL_READ ;
 int SMB_PRTCL_WORD_DATA ;
 scalar_t__ device_get_softc (int ) ;
 int nfsmb_wait (struct nfsmb_softc*) ;
 int printf (char*,int,char,unsigned short,int) ;

__attribute__((used)) static int
nfsmb_readw(device_t dev, u_char slave, char cmd, short *word)
{
 struct nfsmb_softc *sc = (struct nfsmb_softc *)device_get_softc(dev);
 int error;

 NFSMB_LOCK(sc);
 NFSMB_SMBOUTB(sc, SMB_CMD, cmd);
 NFSMB_SMBOUTB(sc, SMB_ADDR, slave);
 NFSMB_SMBOUTB(sc, SMB_PRTCL, SMB_PRTCL_READ | SMB_PRTCL_WORD_DATA);

 if ((error = nfsmb_wait(sc)) == SMB_ENOERR)
  *word = NFSMB_SMBINB(sc, SMB_DATA) |
      (NFSMB_SMBINB(sc, SMB_DATA + 1) << 8);

 NFSMB_DEBUG(printf("nfsmb: READW from 0x%x, cmd=0x%x, word=0x%x, error=0x%x\n", slave, cmd, (unsigned short)*word, error));
 NFSMB_UNLOCK(sc);

 return (error);
}
