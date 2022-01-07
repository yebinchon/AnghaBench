
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int intr_event_remove_handler (void*) ;

__attribute__((used)) static int
ciu_teardown_intr(device_t bus, device_t child, struct resource *res,
    void *cookie)
{
 int error;

 error = intr_event_remove_handler(cookie);
 if (error != 0)
  return (error);

 return (0);
}
