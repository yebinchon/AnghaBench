
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 scalar_t__ initialized ;
 int loginname ;
 int setlogin (int ) ;

void
priv_proc_setlogin_cleanup(int asroot, int injail, struct test *test)
{

 if (initialized)
  (void)setlogin(loginname);
}
