
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ET_LOCK () ;
 int ET_UNLOCK () ;
 int configtimer (int) ;

void
resumeclock(void)
{
 ET_LOCK();
 configtimer(1);
 ET_UNLOCK();
}
