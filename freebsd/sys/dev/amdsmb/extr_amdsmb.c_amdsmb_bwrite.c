
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
 scalar_t__ SMB_ADDR ;
 scalar_t__ SMB_BCNT ;
 scalar_t__ SMB_CMD ;
 scalar_t__ SMB_DATA ;
 int SMB_EINVAL ;
 scalar_t__ SMB_PRTCL ;
 int SMB_PRTCL_BLOCK_DATA ;
 int SMB_PRTCL_WRITE ;
 int amdsmb_ec_write (struct amdsmb_softc*,scalar_t__,int) ;
 int amdsmb_wait (struct amdsmb_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,int,char,int) ;

__attribute__((used)) static int
amdsmb_bwrite(device_t dev, u_char slave, char cmd, u_char count, char *buf)
{
 struct amdsmb_softc *sc = (struct amdsmb_softc *)device_get_softc(dev);
 u_char i;
 int error;

 if (count < 1 || count > 32)
  return (SMB_EINVAL);

 AMDSMB_LOCK(sc);
 amdsmb_ec_write(sc, SMB_CMD, cmd);
 amdsmb_ec_write(sc, SMB_BCNT, count);
 for (i = 0; i < count; i++)
  amdsmb_ec_write(sc, SMB_DATA + i, buf[i]);
 amdsmb_ec_write(sc, SMB_ADDR, slave);
 amdsmb_ec_write(sc, SMB_PRTCL, SMB_PRTCL_WRITE | SMB_PRTCL_BLOCK_DATA);

 error = amdsmb_wait(sc);

 AMDSMB_DEBUG(printf("amdsmb: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, "
     "error=0x%x", slave, count, cmd, error));
 AMDSMB_UNLOCK(sc);

 return (error);
}
