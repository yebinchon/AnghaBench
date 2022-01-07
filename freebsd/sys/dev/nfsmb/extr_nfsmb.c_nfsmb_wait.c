
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nfsmb_softc {int dummy; } ;


 int DELAY (int) ;
 int NFSMB_DEBUG (int ) ;
 int NFSMB_LOCK_ASSERT (struct nfsmb_softc*) ;
 int NFSMB_SMBINB (struct nfsmb_softc*,int ) ;
 int SMB_EBUSERR ;
 int SMB_EBUSY ;
 int SMB_ENOACK ;
 int SMB_ENOERR ;
 int SMB_ENOTSUPP ;
 int SMB_ETIMEOUT ;
 int SMB_PRTCL ;
 int SMB_STS ;






 int SMB_STS_STATUS ;

 int printf (char*,int) ;

__attribute__((used)) static int
nfsmb_wait(struct nfsmb_softc *sc)
{
 u_char sts;
 int error, count;

 NFSMB_LOCK_ASSERT(sc);
 if (NFSMB_SMBINB(sc, SMB_PRTCL) != 0)
 {
  count = 10000;
  do {
   DELAY(500);
  } while (NFSMB_SMBINB(sc, SMB_PRTCL) != 0 && count--);
  if (count == 0)
   return (SMB_ETIMEOUT);
 }

 sts = NFSMB_SMBINB(sc, SMB_STS) & SMB_STS_STATUS;
 NFSMB_DEBUG(printf("nfsmb: STS=0x%x\n", sts));

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
