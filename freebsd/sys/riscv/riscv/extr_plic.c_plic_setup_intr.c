
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct plic_softc {int dummy; } ;
struct plic_irqsrc {int dummy; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int isrc_cpu; } ;
typedef int device_t ;


 int CPU_SET (int ,int *) ;
 int PCPU_GET (int ) ;
 int cpuid ;
 struct plic_softc* device_get_softc (int ) ;
 int plic_bind_intr (int ,struct intr_irqsrc*) ;

__attribute__((used)) static int
plic_setup_intr(device_t dev, struct intr_irqsrc *isrc,
    struct resource *res, struct intr_map_data *data)
{
 struct plic_softc *sc;
 struct plic_irqsrc *src;

 sc = device_get_softc(dev);
 src = (struct plic_irqsrc *)isrc;


 CPU_SET(PCPU_GET(cpuid), &isrc->isrc_cpu);
 plic_bind_intr(dev, isrc);

 return (0);
}
