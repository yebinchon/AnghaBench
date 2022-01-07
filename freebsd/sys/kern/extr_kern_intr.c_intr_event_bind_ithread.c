
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_event {int dummy; } ;


 int _intr_event_bind (struct intr_event*,int,int,int) ;

int
intr_event_bind_ithread(struct intr_event *ie, int cpu)
{

 return (_intr_event_bind(ie, cpu, 0, 1));
}
