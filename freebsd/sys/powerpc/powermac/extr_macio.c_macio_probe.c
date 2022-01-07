
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ mpd_devid; int * mpd_desc; } ;


 int ENXIO ;
 int device_set_desc (int ,int *) ;
 TYPE_1__* macio_pci_devlist ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
macio_probe(device_t dev)
{
        int i;
        u_int32_t devid;

        devid = pci_get_devid(dev);
        for (i = 0; macio_pci_devlist[i].mpd_desc != ((void*)0); i++) {
                if (devid == macio_pci_devlist[i].mpd_devid) {
                        device_set_desc(dev, macio_pci_devlist[i].mpd_desc);
                        return (0);
                }
        }

        return (ENXIO);
}
