
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,char const*,int,...) ;
 int testnum ;

__attribute__((used)) static void
notok_mode(const char *testname, const char *comment, int mode)
{

 testnum++;
 if (comment == ((void*)0))
  printf("not ok %d - %s # mode 0x%x\n", testnum, testname,
      mode);
 else
  printf("not ok %d - %s # mode 0x%x - %s\n", testnum, testname,
      mode, comment);
}
