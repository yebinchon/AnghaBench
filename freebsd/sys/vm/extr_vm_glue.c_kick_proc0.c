
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc0 ;
 int wakeup (int *) ;

void
kick_proc0(void)
{

 wakeup(&proc0);
}
