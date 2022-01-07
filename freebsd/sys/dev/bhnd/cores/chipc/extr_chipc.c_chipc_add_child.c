
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct chipc_softc {int dummy; } ;
struct chipc_devinfo {int irq_mapped; int resources; } ;
typedef int * device_t ;


 int M_BHND ;
 int M_NOWAIT ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_delete_child (int *,int *) ;
 struct chipc_softc* device_get_softc (int *) ;
 int device_set_ivars (int *,struct chipc_devinfo*) ;
 struct chipc_devinfo* malloc (int,int ,int ) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
chipc_add_child(device_t dev, u_int order, const char *name, int unit)
{
 struct chipc_softc *sc;
 struct chipc_devinfo *dinfo;
 device_t child;

 sc = device_get_softc(dev);

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0))
  return (((void*)0));

 dinfo = malloc(sizeof(struct chipc_devinfo), M_BHND, M_NOWAIT);
 if (dinfo == ((void*)0)) {
  device_delete_child(dev, child);
  return (((void*)0));
 }

 resource_list_init(&dinfo->resources);
 dinfo->irq_mapped = 0;
 device_set_ivars(child, dinfo);

 return (child);
}
