
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
 scalar_t__ SMB_DATA ;
 int SMB_ENOERR ;
 int SMB_PRTCL ;
 int SMB_PRTCL_READ ;
 int SMB_PRTCL_WORD_DATA ;
 int amdsmb_ec_read (struct amdsmb_softc*,scalar_t__,int*) ;
 int amdsmb_ec_write (struct amdsmb_softc*,int ,int) ;
 int amdsmb_wait (struct amdsmb_softc*) ;
 scalar_t__ device_get_softc (int ) ;
 int printf (char*,int,char,unsigned short,int) ;

__attribute__((used)) static int
amdsmb_readw(device_t dev, u_char slave, char cmd, short *word)
{
 struct amdsmb_softc *sc = (struct amdsmb_softc *)device_get_softc(dev);
 u_char temp[2];
 int error;

 AMDSMB_LOCK(sc);
 amdsmb_ec_write(sc, SMB_CMD, cmd);
 amdsmb_ec_write(sc, SMB_ADDR, slave);
 amdsmb_ec_write(sc, SMB_PRTCL, SMB_PRTCL_READ | SMB_PRTCL_WORD_DATA);

 if ((error = amdsmb_wait(sc)) == SMB_ENOERR) {
  amdsmb_ec_read(sc, SMB_DATA + 0, &temp[0]);
  amdsmb_ec_read(sc, SMB_DATA + 1, &temp[1]);
  *word = temp[0] | (temp[1] << 8);
 }

 AMDSMB_DEBUG(printf("amdsmb: READW from 0x%x, cmd=0x%x, word=0x%x, "
     "error=0x%x\n", slave, cmd, (unsigned short)*word, error));
 AMDSMB_UNLOCK(sc);

 return (error);
}
