
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct statfs {scalar_t__ f_bavail; int f_blocks; } ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {scalar_t__ v_type; int v_mount; } ;


 int ACCT_EXITREQ ;
 int LOG_NOTICE ;
 int M_STATFS ;
 int M_WAITOK ;
 int SX_XLOCKED ;
 scalar_t__ VBAD ;
 scalar_t__ VFS_STATFS (int ,struct statfs*) ;
 int acct_disable (int *,int) ;
 int acct_state ;
 int acct_suspended ;
 int acct_sx ;
 TYPE_1__* acct_vp ;
 int acctresume ;
 int acctsuspend ;
 int free (struct statfs*,int ) ;
 int log (int ,char*) ;
 struct statfs* malloc (int,int ,int ) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static void
acctwatch(void)
{
 struct statfs *sp;

 sx_assert(&acct_sx, SX_XLOCKED);






 if (acct_vp == ((void*)0)) {
  acct_state |= ACCT_EXITREQ;
  return;
 }





 if (acct_vp->v_type == VBAD) {
  (void) acct_disable(((void*)0), 1);
  acct_state |= ACCT_EXITREQ;
  return;
 }





 sp = malloc(sizeof(struct statfs), M_STATFS, M_WAITOK);
 if (VFS_STATFS(acct_vp->v_mount, sp) < 0) {
  free(sp, M_STATFS);
  return;
 }
 if (acct_suspended) {
  if (sp->f_bavail > (int64_t)(acctresume * sp->f_blocks /
      100)) {
   acct_suspended = 0;
   log(LOG_NOTICE, "Accounting resumed\n");
  }
 } else {
  if (sp->f_bavail <= (int64_t)(acctsuspend * sp->f_blocks /
      100)) {
   acct_suspended = 1;
   log(LOG_NOTICE, "Accounting suspended\n");
  }
 }
 free(sp, M_STATFS);
}
