
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clone_drain_lock ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void
drain_dev_clone_events(void)
{

 sx_xlock(&clone_drain_lock);
 sx_xunlock(&clone_drain_lock);
}
