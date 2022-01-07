
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intr_vector {TYPE_1__* iv_event; } ;
struct TYPE_2__ {int ie_fullname; } ;


 int EINVAL ;
 int IV_MAX ;
 int intr_event_describe_handler (TYPE_1__*,void*,char const*) ;
 int intr_table_lock ;
 struct intr_vector* intr_vectors ;
 int intrcnt_updatename (int,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
intr_describe(int vec, void *ih, const char *descr)
{
 struct intr_vector *iv;
 int error;

 if (vec < 0 || vec >= IV_MAX)
  return (EINVAL);
 sx_xlock(&intr_table_lock);
 iv = &intr_vectors[vec];
 if (iv == ((void*)0)) {
  sx_xunlock(&intr_table_lock);
  return (EINVAL);
 }
 error = intr_event_describe_handler(iv->iv_event, ih, descr);
 if (error) {
  sx_xunlock(&intr_table_lock);
  return (error);
 }
 intrcnt_updatename(vec, iv->iv_event->ie_fullname, 0);
 sx_xunlock(&intr_table_lock);
 return (error);
}
