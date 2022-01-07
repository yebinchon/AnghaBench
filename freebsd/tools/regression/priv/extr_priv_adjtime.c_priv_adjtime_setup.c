
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 scalar_t__ adjtime (int *,int *) ;
 int initialized ;
 int query_tv ;
 int warn (char*) ;

int
priv_adjtime_setup(int asroot, int injail, struct test *test)
{

 if (initialized)
  return (0);
 if (adjtime(((void*)0), &query_tv) < 0) {
  warn("priv_adjtime_setup: adjtime(NULL)");
  return (-1);
 }
 initialized = 1;
 return (0);
}
