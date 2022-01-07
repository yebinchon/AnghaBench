
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_gic_softc {scalar_t__ nirqs; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOTSUP ;
 struct intr_irqsrc* GIC_INTR_ISRC (struct mtk_gic_softc*,scalar_t__) ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 struct mtk_gic_softc* device_get_softc (int ) ;

__attribute__((used)) static int
mtk_gic_map_intr(device_t dev, struct intr_map_data *data,
    struct intr_irqsrc **isrcp)
{
 return (ENOTSUP);

}
