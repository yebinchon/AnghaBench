
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 scalar_t__ gettimeofday (int *,int *) ;
 int now ;
 int warn (char*) ;

int
priv_settimeofday_setup(int asroot, int injail, struct test *test)
{

 if (gettimeofday(&now, ((void*)0)) < 0) {
  warn("priv_settimeofday_setup: gettimeofday");
  return (-1);
 }
 return (0);
}
