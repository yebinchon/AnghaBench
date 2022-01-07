
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int acct (int *) ;
 int fpath1 ;
 scalar_t__ fpath1_initialized ;
 int fpath2 ;
 scalar_t__ fpath2_initialized ;
 int unlink (int ) ;

void
priv_acct_cleanup(int asroot, int injail, struct test *test)
{

 (void)acct(((void*)0));
 if (fpath1_initialized) {
  (void)unlink(fpath1);
  fpath1_initialized = 0;
 }
 if (fpath2_initialized) {
  (void)unlink(fpath2);
  fpath2_initialized = 0;
 }
}
