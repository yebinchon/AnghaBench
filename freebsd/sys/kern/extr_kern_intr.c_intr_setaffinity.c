
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_event {int dummy; } ;
typedef int cpuset_t ;


 scalar_t__ CPU_CMP (int ,int *) ;
 int CPU_ISSET (int,int *) ;
 int CPU_SETSIZE ;



 int EINVAL ;
 int ESRCH ;
 int NOCPU ;
 int cpuset_root ;
 int intr_event_bind (struct intr_event*,int) ;
 int intr_event_bind_irqonly (struct intr_event*,int) ;
 int intr_event_bind_ithread (struct intr_event*,int) ;
 struct intr_event* intr_lookup (int) ;

int
intr_setaffinity(int irq, int mode, void *m)
{
 struct intr_event *ie;
 cpuset_t *mask;
 int cpu, n;

 mask = m;
 cpu = NOCPU;




 if (CPU_CMP(cpuset_root, mask)) {
  for (n = 0; n < CPU_SETSIZE; n++) {
   if (!CPU_ISSET(n, mask))
    continue;
   if (cpu != NOCPU)
    return (EINVAL);
   cpu = n;
  }
 }
 ie = intr_lookup(irq);
 if (ie == ((void*)0))
  return (ESRCH);
 switch (mode) {
 case 129:
  return (intr_event_bind(ie, cpu));
 case 130:
  return (intr_event_bind_irqonly(ie, cpu));
 case 128:
  return (intr_event_bind_ithread(ie, cpu));
 default:
  return (EINVAL);
 }
}
