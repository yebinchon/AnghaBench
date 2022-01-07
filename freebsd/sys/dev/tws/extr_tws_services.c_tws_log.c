
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tws_softc {int tws_dev; } ;
struct TYPE_2__ {int desc; int severity_level; int error_code; int error_str; int fmt; } ;


 TYPE_1__* array ;
 int device_printf (int ,int ,int ,int ,int ,int ) ;

void
tws_log(struct tws_softc *sc, int index)
{
    device_printf((sc)->tws_dev, array[index].fmt,
                    array[index].error_str,
                    array[index].error_code,
                    array[index].severity_level,
                    array[index].desc );
}
