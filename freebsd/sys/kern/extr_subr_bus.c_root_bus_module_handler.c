
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int module_t ;
typedef int kobj_t ;
typedef int kobj_class_t ;
struct TYPE_4__ {char* desc; int state; int * driver; } ;


 int DS_ATTACHED ;
 int EOPNOTSUPP ;
 int FALSE ;


 int TAILQ_INIT (int *) ;
 int bus_data_devices ;
 int devclass_find_internal (char*,int *,int ) ;
 int device_shutdown (TYPE_1__*) ;
 int devinit () ;
 int kobj_class_compile (int ) ;
 int kobj_init (int ,int ) ;
 TYPE_1__* make_device (int *,char*,int ) ;
 TYPE_1__* root_bus ;
 int root_devclass ;
 int root_driver ;

__attribute__((used)) static int
root_bus_module_handler(module_t mod, int what, void* arg)
{
 switch (what) {
 case 129:
  TAILQ_INIT(&bus_data_devices);
  kobj_class_compile((kobj_class_t) &root_driver);
  root_bus = make_device(((void*)0), "root", 0);
  root_bus->desc = "System root bus";
  kobj_init((kobj_t) root_bus, (kobj_class_t) &root_driver);
  root_bus->driver = &root_driver;
  root_bus->state = DS_ATTACHED;
  root_devclass = devclass_find_internal("root", ((void*)0), FALSE);
  devinit();
  return (0);

 case 128:
  device_shutdown(root_bus);
  return (0);
 default:
  return (EOPNOTSUPP);
 }

 return (0);
}
