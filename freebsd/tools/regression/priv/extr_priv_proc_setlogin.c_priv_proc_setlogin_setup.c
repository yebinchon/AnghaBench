
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int * getlogin () ;
 int initialized ;
 int * loginname ;
 int warn (char*) ;

int
priv_proc_setlogin_setup(int asroot, int injail, struct test *test)
{

 if (initialized)
  return (0);
 loginname = getlogin();
 if (loginname == ((void*)0)) {
  warn("priv_proc_setlogin_setup: getlogin");
  return (-1);
 }
 initialized = 1;
 return (0);
}
