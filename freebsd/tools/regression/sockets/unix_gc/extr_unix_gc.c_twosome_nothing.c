
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close2 (int,int) ;
 int my_socketpair (int*) ;
 int printf (char*,char*) ;
 int save_sysctls (int*,int*) ;
 char* test ;
 int test_sysctls (int,int) ;

__attribute__((used)) static void
twosome_nothing(void)
{
 int inflight, openfiles;
 int sv[2];




 test = "twosome_nothing1";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 my_socketpair(sv);
 close2(sv[0], sv[1]);
 test_sysctls(inflight, openfiles);




 test = "twosome_nothing2";
 printf("%s\n", test);
 save_sysctls(&inflight, &openfiles);
 my_socketpair(sv);
 close2(sv[0], sv[1]);
 test_sysctls(inflight, openfiles);
}
