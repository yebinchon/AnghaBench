
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int KENV_SET ;
 int KENV_VAR_LEN ;
 int KENV_VAR_NAME ;
 int KENV_VAR_VALUE ;
 scalar_t__ kenv (int ,int ,int ,int ) ;
 int warn (char*) ;

int
priv_kenv_unset_setup(int asroot, int injail, struct test *test)
{

 if (kenv(KENV_SET, KENV_VAR_NAME, KENV_VAR_VALUE, KENV_VAR_LEN) < 0) {
  warn("priv_kenv_unset: kenv");
  return (-1);
 }
 return (0);
}
