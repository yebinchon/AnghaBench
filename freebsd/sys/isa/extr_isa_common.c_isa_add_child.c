
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct isa_device {int id_order; int id_configs; int id_resources; } ;
typedef int * device_t ;


 int M_ISADEV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int * device_add_child_ordered (int *,int ,char const*,int) ;
 int device_set_ivars (int *,struct isa_device*) ;
 struct isa_device* malloc (int,int ,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
isa_add_child(device_t dev, u_int order, const char *name, int unit)
{
 device_t child;
 struct isa_device *idev;

 child = device_add_child_ordered(dev, order, name, unit);
 if (child == ((void*)0))
  return (child);

 idev = malloc(sizeof(struct isa_device), M_ISADEV, M_NOWAIT | M_ZERO);
 if (!idev)
  return (0);

 resource_list_init(&idev->id_resources);
 TAILQ_INIT(&idev->id_configs);
 idev->id_order = order;

 device_set_ivars(child, idev);

 return (child);
}
