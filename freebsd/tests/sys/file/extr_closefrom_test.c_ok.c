
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,int,char const*) ;
 int test ;

__attribute__((used)) static void
ok(const char *descr)
{

 printf("ok %d - %s\n", test, descr);
 test++;
}
