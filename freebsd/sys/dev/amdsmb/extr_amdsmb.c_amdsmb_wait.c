
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct amdsmb_softc {int dummy; } ;


 int AMDSMB_DEBUG (int ) ;
 int AMDSMB_LOCK_ASSERT (struct amdsmb_softc*) ;
 int DELAY (int) ;
 int SMB_EBUSERR ;
 int SMB_EBUSY ;
 int SMB_ENOACK ;
 int SMB_ENOERR ;
 int SMB_ENOTSUPP ;
 int SMB_ETIMEOUT ;
 int SMB_PRTCL ;
 int SMB_STS ;






 scalar_t__ SMB_STS_STATUS ;

 int amdsmb_ec_read (struct amdsmb_softc*,int ,scalar_t__*) ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static int
amdsmb_wait(struct amdsmb_softc *sc)
{
 u_char sts, temp;
 int error, count;

 AMDSMB_LOCK_ASSERT(sc);
 amdsmb_ec_read(sc, SMB_PRTCL, &temp);
 if (temp != 0)
 {
  count = 10000;
  do {
   DELAY(500);
   amdsmb_ec_read(sc, SMB_PRTCL, &temp);
  } while (temp != 0 && count--);
  if (count == 0)
   return (SMB_ETIMEOUT);
 }

 amdsmb_ec_read(sc, SMB_STS, &sts);
 sts &= SMB_STS_STATUS;
 AMDSMB_DEBUG(printf("amdsmb: STS=0x%x\n", sts));

 switch (sts) {
 case 129:
  error = SMB_ENOERR;
  break;
 case 132:
  error = SMB_ENOACK;
  break;
 case 134:
  error = SMB_EBUSY;
  break;
 case 128:
  error = SMB_ETIMEOUT;
  break;
 case 131:
 case 133:
 case 130:
  error = SMB_ENOTSUPP;
  break;
 default:
  error = SMB_EBUSERR;
  break;
 }

 return (error);
}
