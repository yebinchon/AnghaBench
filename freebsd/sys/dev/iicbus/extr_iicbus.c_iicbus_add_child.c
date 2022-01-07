
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct iicbus_ivar {int rl; } ;
typedef int * device_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_delete_child (int *,int *) ;
 int device_set_ivars (int *,struct iicbus_ivar*) ;
 struct iicbus_ivar* malloc (int,int ,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
iicbus_add_child(device_t dev, u_int order, const char *name, int unit)
{
 device_t child;
 struct iicbus_ivar *devi;

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0))
  return (child);
 devi = malloc(sizeof(struct iicbus_ivar), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (devi == ((void*)0)) {
  device_delete_child(dev, child);
  return (0);
 }
 resource_list_init(&devi->rl);
 device_set_ivars(child, devi);
 return (child);
}
