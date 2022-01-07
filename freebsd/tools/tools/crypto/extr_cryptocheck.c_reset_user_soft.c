
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off ;


 int CRYPT_SOFT_ALLOW ;
 int sysctlbyname (int ,int *,int *,int*,int) ;

__attribute__((used)) static void
reset_user_soft(void)
{
 int off = 0;
 sysctlbyname(CRYPT_SOFT_ALLOW, ((void*)0), ((void*)0), &off, sizeof(off));
}
