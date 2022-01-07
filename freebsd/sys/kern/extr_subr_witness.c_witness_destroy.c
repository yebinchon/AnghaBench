
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct witness {scalar_t__ w_refcount; } ;
struct lock_object {int lo_flags; struct witness* lo_witness; int lo_name; } ;
struct lock_class {int lc_name; } ;


 struct lock_class* LOCK_CLASS (struct lock_object*) ;
 int LO_WITNESS ;
 int MPASS (int) ;
 int depart (struct witness*) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int panic (char*,int ,int ) ;
 int w_mtx ;
 scalar_t__ witness_cold ;

void
witness_destroy(struct lock_object *lock)
{
 struct lock_class *class;
 struct witness *w;

 class = LOCK_CLASS(lock);

 if (witness_cold)
  panic("lock (%s) %s destroyed while witness_cold",
      class->lc_name, lock->lo_name);


 if ((lock->lo_flags & LO_WITNESS) == 0 || lock->lo_witness == ((void*)0))
  return;
 w = lock->lo_witness;

 mtx_lock_spin(&w_mtx);
 MPASS(w->w_refcount > 0);
 w->w_refcount--;

 if (w->w_refcount == 0)
  depart(w);
 mtx_unlock_spin(&w_mtx);
}
