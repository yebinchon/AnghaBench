
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int printf (char*,int,int,char const*) ;

__attribute__((used)) static void
print_rtrn_errno(int rtrnVal, const char *eol)
{
 printf("%d %d%s", rtrnVal, rtrnVal != 0 ? errno : 0, eol);

 return;
}
