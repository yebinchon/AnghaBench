
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int device_t ;


 int intr_describe (int ,void*,char const*) ;
 int rman_get_start (struct resource*) ;

__attribute__((used)) static int
nexus_describe_intr(device_t dev, device_t child, struct resource *irq,
    void *cookie, const char *descr)
{

 return (intr_describe(rman_get_start(irq), cookie, descr));
}
