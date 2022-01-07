
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int failures ;
 int printf (char*,char*,int,char*,char const*) ;
 int testnum ;

__attribute__((used)) static void
test1(const char *testdesc, int pass, int skip)
{

 testnum++;
 printf("%sok %d - %s%s\n", pass || skip ? "" : "not ", testnum,
     skip ? "(SKIPPED) " : "", testdesc);
 if (!pass && !skip)
  failures++;
}
