
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_vector {scalar_t__ iv_refcnt; } ;


 int EINVAL ;
 int IV_MAX ;
 int PIL_LOW ;
 int intr_event_remove_handler (void*) ;
 int intr_fast ;
 int intr_setup (int ,int ,int,int ,struct intr_vector*) ;
 int intr_stray_vector ;
 int intr_table_lock ;
 struct intr_vector* intr_vectors ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
inthand_remove(int vec, void *cookie)
{
 struct intr_vector *iv;
 int error;

 if (vec < 0 || vec >= IV_MAX)
  return (EINVAL);
 error = intr_event_remove_handler(cookie);
 if (error == 0) {




  sx_xlock(&intr_table_lock);
  iv = &intr_vectors[vec];
  iv->iv_refcnt--;
  if (iv->iv_refcnt == 0) {




   intr_setup(PIL_LOW, intr_fast, vec,
       intr_stray_vector, iv);
  }
  sx_xunlock(&intr_table_lock);
 }
 return (error);
}
