
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_tid; } ;
typedef scalar_t__ lwpid_t ;


 struct thread* kdb_thr_first () ;
 struct thread* kdb_thr_next (struct thread*) ;

struct thread *
kdb_thr_lookup(lwpid_t tid)
{
 struct thread *thr;

 thr = kdb_thr_first();
 while (thr != ((void*)0) && thr->td_tid != tid)
  thr = kdb_thr_next(thr);
 return (thr);
}
