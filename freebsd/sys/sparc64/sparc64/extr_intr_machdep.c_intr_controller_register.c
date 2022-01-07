
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_vector {int iv_mid; struct intr_event* iv_event; void* iv_icarg; struct intr_controller const* iv_ic; } ;
struct intr_event {int dummy; } ;
struct intr_controller {int ic_clear; } ;


 int EEXIST ;
 int EINVAL ;
 int IV_MAX ;
 int PCPU_GET (int ) ;
 int intr_assign_cpu ;
 int intr_event_create (struct intr_event**,struct intr_vector*,int ,int,int *,int ,int ,int ,char*,int) ;
 int intr_event_destroy (struct intr_event*) ;
 int intr_table_lock ;
 struct intr_vector* intr_vectors ;
 int mid ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
intr_controller_register(int vec, const struct intr_controller *ic,
    void *icarg)
{
 struct intr_event *ie;
 struct intr_vector *iv;
 int error;

 if (vec < 0 || vec >= IV_MAX)
  return (EINVAL);
 sx_xlock(&intr_table_lock);
 iv = &intr_vectors[vec];
 ie = iv->iv_event;
 sx_xunlock(&intr_table_lock);
 if (ie != ((void*)0))
  return (EEXIST);
 error = intr_event_create(&ie, iv, 0, vec, ((void*)0), ic->ic_clear,
     ic->ic_clear, intr_assign_cpu, "vec%d:", vec);
 if (error != 0)
  return (error);
 sx_xlock(&intr_table_lock);
 if (iv->iv_event != ((void*)0)) {
  sx_xunlock(&intr_table_lock);
  intr_event_destroy(ie);
  return (EEXIST);
 }
 iv->iv_ic = ic;
 iv->iv_icarg = icarg;
 iv->iv_event = ie;
 iv->iv_mid = PCPU_GET(mid);
 sx_xunlock(&intr_table_lock);
 return (0);
}
