
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum intr_trigger { ____Placeholder_intr_trigger } intr_trigger ;
typedef enum intr_polarity { ____Placeholder_intr_polarity } intr_polarity ;
typedef TYPE_1__* device_t ;
struct TYPE_3__ {scalar_t__ parent; } ;


 int BUS_CONFIG_INTR (scalar_t__,int,int,int) ;
 int EINVAL ;

int
bus_generic_config_intr(device_t dev, int irq, enum intr_trigger trig,
    enum intr_polarity pol)
{


 if (dev->parent)
  return (BUS_CONFIG_INTR(dev->parent, irq, trig, pol));
 return (EINVAL);
}
