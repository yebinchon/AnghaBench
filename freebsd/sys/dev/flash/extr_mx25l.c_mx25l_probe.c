
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int ocd_data; } ;


 int ENXIO ;
 int compat_data ;
 int device_set_desc (int ,char*) ;
 TYPE_2__* flash_devices ;
 int nitems (TYPE_2__*) ;
 scalar_t__ ofw_bus_is_compatible (int ,int ) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
mx25l_probe(device_t dev)
{
 device_set_desc(dev, "M25Pxx Flash Family");

 return (0);
}
