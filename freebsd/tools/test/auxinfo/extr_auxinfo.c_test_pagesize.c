
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpagesize () ;
 int printf (char*,int) ;

__attribute__((used)) static void
test_pagesize(void)
{

 printf("Pagesize: %d\n", getpagesize());
}
