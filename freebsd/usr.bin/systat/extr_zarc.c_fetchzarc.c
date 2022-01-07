
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int curstat ;
 int getinfo (int *) ;
 int oldstat ;

void
fetchzarc(void)
{
 oldstat = curstat;
 getinfo(&curstat);
}
