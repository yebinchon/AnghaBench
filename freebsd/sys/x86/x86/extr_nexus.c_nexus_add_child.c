
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct nexus_device {int nx_resources; } ;
typedef int device_t ;


 int M_NEXUSDEV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int device_add_child_ordered (int ,int ,char const*,int) ;
 int device_set_ivars (int ,struct nexus_device*) ;
 struct nexus_device* malloc (int,int ,int) ;
 int resource_list_init (int *) ;

__attribute__((used)) static device_t
nexus_add_child(device_t bus, u_int order, const char *name, int unit)
{
 device_t child;
 struct nexus_device *ndev;

 ndev = malloc(sizeof(struct nexus_device), M_NEXUSDEV, M_NOWAIT|M_ZERO);
 if (!ndev)
  return(0);
 resource_list_init(&ndev->nx_resources);

 child = device_add_child_ordered(bus, order, name, unit);


 device_set_ivars(child, ndev);

 return(child);
}
