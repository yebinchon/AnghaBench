
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct amdpm_softc {int dummy; } ;


 int AMDPM_DEBUG (int ) ;
 int AMDPM_LOCK_ASSERT (struct amdpm_softc*) ;
 int AMDPM_SMBINW (struct amdpm_softc*,int ) ;
 int AMDSMB_GLOBAL_STATUS ;
 int AMDSMB_GS_ABRT_STS ;
 int AMDSMB_GS_COL_STS ;
 int AMDSMB_GS_HST_STS ;
 int AMDSMB_GS_PRERR_STS ;
 int DELAY (int) ;
 int SMB_EABORT ;
 int SMB_EBUSERR ;
 int SMB_ENOACK ;
 int SMB_ENOERR ;
 int SMB_ETIMEOUT ;
 int amdpm_clear (struct amdpm_softc*) ;
 int printf (char*,int,int) ;

__attribute__((used)) static int
amdpm_wait(struct amdpm_softc *sc)
{
 int count = 10000;
 u_short sts = 0;
 int error;

 AMDPM_LOCK_ASSERT(sc);

 while(count--) {
  DELAY(10);
  sts = AMDPM_SMBINW(sc, AMDSMB_GLOBAL_STATUS);
  if (!(sts & AMDSMB_GS_HST_STS))
   break;
 }

 AMDPM_DEBUG(printf("amdpm: STS=0x%x (count=%d)\n", sts, count));

 error = SMB_ENOERR;

 if (!count)
  error |= SMB_ETIMEOUT;

 if (sts & AMDSMB_GS_ABRT_STS)
  error |= SMB_EABORT;

 if (sts & AMDSMB_GS_COL_STS)
  error |= SMB_ENOACK;

 if (sts & AMDSMB_GS_PRERR_STS)
  error |= SMB_EBUSERR;

 if (error != SMB_ENOERR)
  amdpm_clear(sc);

 return (error);
}
