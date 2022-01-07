
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdt_softc {int dummy; } ;
struct cdev {struct gdt_softc* si_drv1; } ;
typedef int * device_t ;
typedef int * devclass_t ;


 int * devclass_find (char*) ;
 int * devclass_get_device (int *,int) ;
 struct gdt_softc* device_get_softc (int *) ;

__attribute__((used)) static struct gdt_softc *
gdt_minor2softc(struct cdev *dev, int minor_no)
{




    devclass_t dc;
    device_t child;

    dc = devclass_find("iir");
    if (dc == ((void*)0))
 return (((void*)0));
    child = devclass_get_device(dc, minor_no);
    if (child == ((void*)0))
 return (((void*)0));
    return (device_get_softc(child));

}
