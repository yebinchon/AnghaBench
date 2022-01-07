
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int KENV_UNSET ;
 int KENV_VAR_NAME ;
 int kenv (int ,int ,int *,int ) ;

void
priv_kenv_unset_cleanup(int asroot, int injail, struct test *test)
{

 (void)kenv(KENV_UNSET, KENV_VAR_NAME, ((void*)0), 0);
}
