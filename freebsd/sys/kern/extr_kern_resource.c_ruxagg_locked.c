
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_iticks; scalar_t__ td_sticks; scalar_t__ td_uticks; scalar_t__ td_incruntime; int td_proc; } ;
struct rusage_ext {int rux_iticks; int rux_sticks; int rux_uticks; int rux_runtime; } ;


 int MA_OWNED ;
 int PROC_STATLOCK_ASSERT (int ,int ) ;
 int THREAD_LOCK_ASSERT (struct thread*,int ) ;

__attribute__((used)) static void
ruxagg_locked(struct rusage_ext *rux, struct thread *td)
{

 THREAD_LOCK_ASSERT(td, MA_OWNED);
 PROC_STATLOCK_ASSERT(td->td_proc, MA_OWNED);
 rux->rux_runtime += td->td_incruntime;
 rux->rux_uticks += td->td_uticks;
 rux->rux_sticks += td->td_sticks;
 rux->rux_iticks += td->td_iticks;
}
