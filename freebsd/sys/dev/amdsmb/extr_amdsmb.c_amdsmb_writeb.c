
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
 int SMB_CMD ;
 int SMB_DATA ;
 int SMB_PRTCL ;
 int SMB_PRTCL_BYTE_DATA ;
 int SMB_PRTCL_WRITE ;
 int amdsmb_ec_write (struct amdsmb_softc*,int ,int) ;
 int amdsmb_wait (struct amdsmb_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,char,char,int) ;

__attribute__((used)) static int
amdsmb_writeb(device_t dev, u_char slave, char cmd, char byte)
{
 struct amdsmb_softc *sc = (struct amdsmb_softc *)device_get_softc(dev);
 int error;

 AMDSMB_LOCK(sc);
 amdsmb_ec_write(sc, SMB_CMD, cmd);
 amdsmb_ec_write(sc, SMB_DATA, byte);
 amdsmb_ec_write(sc, SMB_ADDR, slave);
 amdsmb_ec_write(sc, SMB_PRTCL, SMB_PRTCL_WRITE | SMB_PRTCL_BYTE_DATA);

 error = amdsmb_wait(sc);

 AMDSMB_DEBUG(printf("amdsmb: WRITEB to 0x%x, cmd=0x%x, byte=0x%x, "
     "error=0x%x\n", slave, cmd, byte, error));
 AMDSMB_UNLOCK(sc);

 return (error);
}
