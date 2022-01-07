
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alloc3fds (int*,int*) ;
 int close3 (int,int,int) ;
 int printf (char*,char*) ;
 int save_sysctls (int*,int*) ;
 int sendfd (int,int) ;
 char* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
threesome_drop(void)
{
 int inflight, openfiles;
 int s, sv[2];




 test = "threesome_drop1";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 alloc3fds(&s, sv);
 sendfd(sv[0], s);
 close3(s, sv[0], sv[1]);
 test_sysctls(inflight, openfiles);




 test = "threesome_drop2";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 alloc3fds(&s, sv);
 sendfd(sv[0], s);
 close3(s, sv[1], sv[0]);
 test_sysctls(inflight, openfiles);




 test = "threesome_drop3";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 alloc3fds(&s, sv);
 sendfd(sv[0], s);
 close3(sv[1], s, sv[0]);
 test_sysctls(inflight, openfiles);




 test = "threesome_drop4";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 alloc3fds(&s, sv);
 sendfd(sv[0], s);
 close3(sv[1], sv[0], s);
 test_sysctls(inflight, openfiles);




 test = "threesome_drop5";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 alloc3fds(&s, sv);
 sendfd(sv[0], s);
 close3(sv[0], sv[1], s);
 test_sysctls(inflight, openfiles);




 test = "threesome_drop6";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 alloc3fds(&s, sv);
 close3(sv[0], s, sv[1]);
 test_sysctls(inflight, openfiles);
}
