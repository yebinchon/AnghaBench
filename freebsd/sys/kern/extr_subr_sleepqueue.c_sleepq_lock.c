
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sleepqueue_chain {int sc_lock; } ;


 struct sleepqueue_chain* SC_LOOKUP (void*) ;
 int mtx_lock_spin (int *) ;

void
sleepq_lock(void *wchan)
{
 struct sleepqueue_chain *sc;

 sc = SC_LOOKUP(wchan);
 mtx_lock_spin(&sc->sc_lock);
}
