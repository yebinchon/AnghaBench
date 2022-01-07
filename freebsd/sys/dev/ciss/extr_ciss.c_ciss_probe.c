
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int desc; } ;


 int BUS_PROBE_DEFAULT ;
 int ENOENT ;
 int ciss_lookup (int ) ;
 TYPE_1__* ciss_vendor_data ;
 int device_set_desc (int ,int ) ;

__attribute__((used)) static int
ciss_probe(device_t dev)
{
    int i;

    i = ciss_lookup(dev);
    if (i != -1) {
 device_set_desc(dev, ciss_vendor_data[i].desc);
 return(BUS_PROBE_DEFAULT);
    }
    return(ENOENT);
}
