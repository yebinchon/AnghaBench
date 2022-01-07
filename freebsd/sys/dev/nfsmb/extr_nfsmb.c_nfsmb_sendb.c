
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
 int SMB_PRTCL ;
 int SMB_PRTCL_BYTE ;
 int SMB_PRTCL_WRITE ;
 scalar_t__ device_get_softc (int ) ;
 int nfsmb_wait (struct nfsmb_softc*) ;
 int printf (char*,int,char,int) ;

__attribute__((used)) static int
nfsmb_sendb(device_t dev, u_char slave, char byte)
{
 struct nfsmb_softc *sc = (struct nfsmb_softc *)device_get_softc(dev);
 int error;

 NFSMB_LOCK(sc);
 NFSMB_SMBOUTB(sc, SMB_CMD, byte);
 NFSMB_SMBOUTB(sc, SMB_ADDR, slave);
 NFSMB_SMBOUTB(sc, SMB_PRTCL, SMB_PRTCL_WRITE | SMB_PRTCL_BYTE);

 error = nfsmb_wait(sc);

 NFSMB_DEBUG(printf("nfsmb: SENDB to 0x%x, byte=0x%x, error=0x%x\n", slave, byte, error));
 NFSMB_UNLOCK(sc);

 return (error);
}
