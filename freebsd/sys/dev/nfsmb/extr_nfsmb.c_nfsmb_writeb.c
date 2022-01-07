
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nfsmb_softc {int dummy; } ;
typedef int device_t ;


 int NFSMB_DEBUG (int ) ;
 int NFSMB_LOCK (struct nfsmb_softc*) ;
 int NFSMB_SMBOUTB (struct nfsmb_softc*,int ,int) ;
 int NFSMB_UNLOCK (struct nfsmb_softc*) ;
 int SMB_ADDR ;
 int SMB_CMD ;
 int SMB_DATA ;
 int SMB_PRTCL ;
 int SMB_PRTCL_BYTE_DATA ;
 int SMB_PRTCL_WRITE ;
 scalar_t__ device_get_softc (int ) ;
 int nfsmb_wait (struct nfsmb_softc*) ;
 int printf (char*,int,char,char,int) ;

__attribute__((used)) static int
nfsmb_writeb(device_t dev, u_char slave, char cmd, char byte)
{
 struct nfsmb_softc *sc = (struct nfsmb_softc *)device_get_softc(dev);
 int error;

 NFSMB_LOCK(sc);
 NFSMB_SMBOUTB(sc, SMB_CMD, cmd);
 NFSMB_SMBOUTB(sc, SMB_DATA, byte);
 NFSMB_SMBOUTB(sc, SMB_ADDR, slave);
 NFSMB_SMBOUTB(sc, SMB_PRTCL, SMB_PRTCL_WRITE | SMB_PRTCL_BYTE_DATA);

 error = nfsmb_wait(sc);

 NFSMB_DEBUG(printf("nfsmb: WRITEB to 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\n", slave, cmd, byte, error));
 NFSMB_UNLOCK(sc);

 return (error);
}
