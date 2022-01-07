
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuntap_driver {int unrhdr; int clones; } ;
typedef int module_t ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 void* EVENTHANDLER_REGISTER (int ,int ,int ,int) ;
 int IF_MAXUNIT ;


 int MTX_DEF ;
 int * arrival_tag ;
 int clone_setup (int *) ;
 int * clone_tag ;
 int dev_clone ;
 int ifnet_arrival_event ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int ,int ,int *) ;
 int nitems (struct tuntap_driver*) ;
 int tunclone ;
 int tunmtx ;
 int tunrename ;
 struct tuntap_driver* tuntap_drivers ;

__attribute__((used)) static int
tuntapmodevent(module_t mod, int type, void *data)
{
 struct tuntap_driver *drv;
 int i;

 switch (type) {
 case 129:
  mtx_init(&tunmtx, "tunmtx", ((void*)0), MTX_DEF);
  for (i = 0; i < nitems(tuntap_drivers); ++i) {
   drv = &tuntap_drivers[i];
   clone_setup(&drv->clones);
   drv->unrhdr = new_unrhdr(0, IF_MAXUNIT, &tunmtx);
  }
  arrival_tag = EVENTHANDLER_REGISTER(ifnet_arrival_event,
     tunrename, 0, 1000);
  if (arrival_tag == ((void*)0))
   return (ENOMEM);
  clone_tag = EVENTHANDLER_REGISTER(dev_clone, tunclone, 0, 1000);
  if (clone_tag == ((void*)0))
   return (ENOMEM);
  break;
 case 128:

  break;
 default:
  return EOPNOTSUPP;
 }
 return 0;
}
