
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc3fds (int*,int*) ;
 int close3 (int,int,int) ;
 int printf (char*,char*) ;
 int save_sysctls (int*,int*) ;
 char* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
threesome_nothing(void)
{
 int inflight, openfiles;
 int s, sv[2];

 test = "threesome_nothing";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 alloc3fds(&s, sv);
 close3(s, sv[0], sv[1]);
 test_sysctls(inflight, openfiles);
}
