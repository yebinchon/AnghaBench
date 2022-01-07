
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ nfsrv_testmalloclimit ;
 int printf (char*) ;

int
nfsrv_mallocmget_limit(void)
{
 static int printmesg = 0;
 static int testval = 1;

 if (nfsrv_testmalloclimit && (testval++ % 1000) == 0) {
  if ((printmesg++ % 100) == 0)
   printf("nfsd: malloc/mget near limit\n");
  return (1);
 }
 return (0);
}
