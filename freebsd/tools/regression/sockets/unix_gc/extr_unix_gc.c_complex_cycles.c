
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc5fds (int*,int*,int*) ;
 int close5 (int,int,int,int,int) ;
 int printf (char*,char*) ;
 int save_sysctls (int*,int*) ;
 int sendfd (int,int) ;
 char* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
complex_cycles(void)
{
 int inflight, openfiles;
 int spare, sva[2], svb[2];

 test = "complex_cycles";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 alloc5fds(&spare, sva, svb);
 sendfd(sva[0], svb[0]);
 sendfd(sva[0], svb[1]);
 sendfd(svb[0], sva[0]);
 sendfd(svb[0], sva[1]);
 sendfd(svb[0], spare);
 sendfd(sva[0], spare);
 close5(spare, sva[0], sva[1], svb[0], svb[1]);
 test_sysctls(inflight, openfiles);
}
