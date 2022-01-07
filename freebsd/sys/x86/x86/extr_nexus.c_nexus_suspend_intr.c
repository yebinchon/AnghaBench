
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int intr_event_suspend_handler (int ) ;
 int rman_get_irq_cookie (struct resource*) ;

__attribute__((used)) static int
nexus_suspend_intr(device_t dev, device_t child, struct resource *irq)
{
 return (intr_event_suspend_handler(rman_get_irq_cookie(irq)));
}
