
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_pic_softc {scalar_t__ nirqs; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; } ;
struct intr_map_data {scalar_t__ type; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 int EINVAL ;
 scalar_t__ INTR_MAP_DATA_FDT ;
 struct intr_irqsrc* PIC_INTR_ISRC (struct jz4780_pic_softc*,scalar_t__) ;
 struct jz4780_pic_softc* device_get_softc (int ) ;

__attribute__((used)) static int
jz4780_pic_map_intr(device_t dev, struct intr_map_data *data,
        struct intr_irqsrc **isrcp)
{
 return (EINVAL);

}
