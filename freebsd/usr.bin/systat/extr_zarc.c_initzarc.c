
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curstat ;
 int dsinit (int) ;
 int getinfo (int *) ;
 int initstat ;
 int oldstat ;

int
initzarc(void)
{
 dsinit(12);
 getinfo(&initstat);
 curstat = oldstat = initstat;

 return 1;
}
