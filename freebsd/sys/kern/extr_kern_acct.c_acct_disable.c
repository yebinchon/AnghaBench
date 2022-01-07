
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int LOG_NOTICE ;
 int SX_XLOCKED ;
 scalar_t__ acct_configured ;
 int * acct_cred ;
 scalar_t__ acct_flags ;
 int acct_limit ;
 int acct_sx ;
 int * acct_vp ;
 int crfree (int *) ;
 int lim_free (int ) ;
 int log (int ,char*) ;
 int sx_assert (int *,int ) ;
 int vn_close (int *,scalar_t__,int *,struct thread*) ;

__attribute__((used)) static int
acct_disable(struct thread *td, int logging)
{
 int error;

 sx_assert(&acct_sx, SX_XLOCKED);
 error = vn_close(acct_vp, acct_flags, acct_cred, td);
 crfree(acct_cred);
 lim_free(acct_limit);
 acct_configured = 0;
 acct_vp = ((void*)0);
 acct_cred = ((void*)0);
 acct_flags = 0;
 if (logging)
  log(LOG_NOTICE, "Accounting disabled\n");
 return (error);
}
