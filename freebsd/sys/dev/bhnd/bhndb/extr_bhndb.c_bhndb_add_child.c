
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhndb_devinfo {int resources; int addrspace; } ;
typedef int * device_t ;


 int BHNDB_ADDRSPACE_NATIVE ;
 int M_BHND ;
 int M_NOWAIT ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_delete_child (int *,int *) ;
 int device_set_ivars (int *,struct bhndb_devinfo*) ;
 struct bhndb_devinfo* malloc (int,int ,int ) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
bhndb_add_child(device_t dev, u_int order, const char *name, int unit)
{
 struct bhndb_devinfo *dinfo;
 device_t child;

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0))
  return (((void*)0));

 dinfo = malloc(sizeof(struct bhndb_devinfo), M_BHND, M_NOWAIT);
 if (dinfo == ((void*)0)) {
  device_delete_child(dev, child);
  return (((void*)0));
 }

 dinfo->addrspace = BHNDB_ADDRSPACE_NATIVE;
 resource_list_init(&dinfo->resources);

 device_set_ivars(child, dinfo);

 return (child);
}
