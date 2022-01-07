
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysent {int sy_thrcnt; } ;


 int EINVAL ;
 int SY_THR_STATIC ;
 int syscall_thread_drain (struct sysent*) ;

int
kern_syscall_deregister(struct sysent *sysents, int offset,
    const struct sysent *old_sysent)
{
 struct sysent *se;

 if (offset == 0)
  return (0);

 se = &sysents[offset];
 if ((se->sy_thrcnt & SY_THR_STATIC) != 0)
  return (EINVAL);
 syscall_thread_drain(se);
 sysents[offset] = *old_sysent;
 return (0);
}
