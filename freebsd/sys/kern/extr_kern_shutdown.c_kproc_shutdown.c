
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {char* p_comm; } ;


 int EWOULDBLOCK ;
 int hz ;
 int kproc_shutdown_wait ;
 int kproc_suspend (struct proc*,int) ;
 scalar_t__ panicstr ;
 int printf (char*,...) ;

void
kproc_shutdown(void *arg, int howto)
{
 struct proc *p;
 int error;

 if (panicstr)
  return;

 p = (struct proc *)arg;
 printf("Waiting (max %d seconds) for system process `%s' to stop... ",
     kproc_shutdown_wait, p->p_comm);
 error = kproc_suspend(p, kproc_shutdown_wait * hz);

 if (error == EWOULDBLOCK)
  printf("timed out\n");
 else
  printf("done\n");
}
