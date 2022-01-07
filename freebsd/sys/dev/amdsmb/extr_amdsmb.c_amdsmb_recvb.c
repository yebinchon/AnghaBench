
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct amdsmb_softc {int dummy; } ;
typedef int device_t ;


 int AMDSMB_DEBUG (int ) ;
 int AMDSMB_LOCK (struct amdsmb_softc*) ;
 int AMDSMB_UNLOCK (struct amdsmb_softc*) ;
 int SMB_ADDR ;
 int SMB_DATA ;
 int SMB_ENOERR ;
 int SMB_PRTCL ;
 int SMB_PRTCL_BYTE ;
 int SMB_PRTCL_READ ;
 int amdsmb_ec_read (struct amdsmb_softc*,int ,char*) ;
 int amdsmb_ec_write (struct amdsmb_softc*,int ,int) ;
 int amdsmb_wait (struct amdsmb_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,char,int) ;

__attribute__((used)) static int
amdsmb_recvb(device_t dev, u_char slave, char *byte)
{
 struct amdsmb_softc *sc = (struct amdsmb_softc *)device_get_softc(dev);
 int error;

 AMDSMB_LOCK(sc);
 amdsmb_ec_write(sc, SMB_ADDR, slave);
 amdsmb_ec_write(sc, SMB_PRTCL, SMB_PRTCL_READ | SMB_PRTCL_BYTE);

 if ((error = amdsmb_wait(sc)) == SMB_ENOERR)
  amdsmb_ec_read(sc, SMB_DATA, byte);

 AMDSMB_DEBUG(printf("amdsmb: RECVB from 0x%x, byte=0x%x, error=0x%x\n",
     slave, *byte, error));
 AMDSMB_UNLOCK(sc);

 return (error);
}
