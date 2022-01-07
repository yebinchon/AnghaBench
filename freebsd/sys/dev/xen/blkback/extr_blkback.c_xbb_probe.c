
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_quiet (int ) ;
 int device_set_desc (int ,char*) ;
 int strcmp (int ,char*) ;
 int xenbus_get_type (int ) ;

__attribute__((used)) static int
xbb_probe(device_t dev)
{

        if (!strcmp(xenbus_get_type(dev), "vbd")) {
                device_set_desc(dev, "Backend Virtual Block Device");
                device_quiet(dev);
                return (0);
        }

        return (ENXIO);
}
