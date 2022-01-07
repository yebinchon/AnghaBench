
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int intr_remove_handler (void*) ;
 int rman_set_irq_cookie (struct resource*,int *) ;

__attribute__((used)) static int
nexus_teardown_intr(device_t dev, device_t child, struct resource *r, void *ih)
{
 int error;

 error = intr_remove_handler(ih);
 if (error == 0)
  rman_set_irq_cookie(r, ((void*)0));
 return (error);
}
