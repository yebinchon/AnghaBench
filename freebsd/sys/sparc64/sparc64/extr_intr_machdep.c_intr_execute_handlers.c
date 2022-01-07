
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_vector {int iv_event; } ;


 scalar_t__ __predict_false (int) ;
 scalar_t__ intr_event_handle (int ,int *) ;
 int intr_stray_vector (struct intr_vector*) ;

__attribute__((used)) static void
intr_execute_handlers(void *cookie)
{
 struct intr_vector *iv;

 iv = cookie;
 if (__predict_false(intr_event_handle(iv->iv_event, ((void*)0)) != 0))
  intr_stray_vector(iv);
}
