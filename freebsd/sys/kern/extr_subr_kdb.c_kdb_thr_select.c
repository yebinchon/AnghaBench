
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int EINVAL ;
 int kdb_thr_ctx (struct thread*) ;
 int kdb_thrctx ;
 struct thread* kdb_thread ;

int
kdb_thr_select(struct thread *thr)
{
 if (thr == ((void*)0))
  return (EINVAL);
 kdb_thread = thr;
 kdb_thrctx = kdb_thr_ctx(thr);
 return (0);
}
