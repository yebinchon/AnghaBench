
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_eventlock ;
 int g_wait_event ;
 int g_wither_work ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (int *) ;

void
g_do_wither()
{

 mtx_lock(&g_eventlock);
 g_wither_work = 1;
 mtx_unlock(&g_eventlock);
 wakeup(&g_wait_event);
}
