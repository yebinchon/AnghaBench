
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {scalar_t__ ut_type; } ;


 scalar_t__ USER_PROCESS ;
 int endutxent () ;
 struct utmpx* getutxent () ;
 int setutxent () ;

__attribute__((used)) static int
ucount(void)
{
 int nusers = 0;
 struct utmpx *ut;

 setutxent();
 while ((ut = getutxent()) != ((void*)0))
  if (ut->ut_type == USER_PROCESS)
   nusers++;
 endutxent();

 return (nusers);
}
