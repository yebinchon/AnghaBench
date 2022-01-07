
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {scalar_t__ ut_type; int ut_line; } ;


 scalar_t__ BOOT_TIME ;
 scalar_t__ USER_PROCESS ;
 scalar_t__ aflag ;
 scalar_t__ bflag ;
 struct utmpx* getutxent () ;
 int row (struct utmpx*) ;
 scalar_t__ ttystat (int ) ;

__attribute__((used)) static void
process_utmp(void)
{
 struct utmpx *utx;

 while ((utx = getutxent()) != ((void*)0)) {
  if (((aflag || !bflag) && utx->ut_type == USER_PROCESS) ||
      (bflag && utx->ut_type == BOOT_TIME))
   if (ttystat(utx->ut_line) == 0)
    row(utx);
 }
}
