
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int on ;
typedef int curstate ;


 int CRYPT_SOFT_ALLOW ;
 int atexit (int ) ;
 int reset_user_soft ;
 scalar_t__ sysctlbyname (int ,int*,size_t*,int*,int) ;

__attribute__((used)) static void
enable_user_soft(void)
{
 int curstate;
 int on = 1;
 size_t cursize = sizeof(curstate);

 if (sysctlbyname(CRYPT_SOFT_ALLOW, &curstate, &cursize,
  &on, sizeof(on)) == 0) {
  if (curstate == 0)
   atexit(reset_user_soft);
 }
}
