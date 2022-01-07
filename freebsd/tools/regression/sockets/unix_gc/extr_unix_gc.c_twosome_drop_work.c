
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close2 (int,int) ;
 int my_socketpair (int*) ;
 int printf (char*,char const*) ;
 int save_sysctls (int*,int*) ;
 int sendfd (int,int) ;
 char const* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
twosome_drop_work(const char *testname, int sendvia, int tosend, int closefirst)
{
 int inflight, openfiles;
 int sv[2];

 printf("%s\n", testname);
 test = testname;
 save_sysctls(&inflight, &openfiles);
 my_socketpair(sv);
 sendfd(sv[sendvia], sv[tosend]);
 if (closefirst == 0)
  close2(sv[0], sv[1]);
 else
  close2(sv[1], sv[0]);
 test_sysctls(inflight, openfiles);
}
