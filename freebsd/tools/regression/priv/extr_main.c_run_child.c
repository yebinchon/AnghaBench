
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int (* t_test_func ) (int,int,struct test*) ;int t_name; } ;


 int GID_OWNER ;
 int UID_OWNER ;
 int enter_jail (int ) ;
 int set_creds (int ,int ,int ) ;
 int setprogname (int ) ;
 int stub1 (int,int,struct test*) ;

__attribute__((used)) static void
run_child(struct test *test, int asroot, int injail)
{

 setprogname(test->t_name);
 if (injail)
  enter_jail(test->t_name);
 if (!asroot)
  set_creds(test->t_name, UID_OWNER, GID_OWNER);
 test->t_test_func(asroot, injail, test);
}
