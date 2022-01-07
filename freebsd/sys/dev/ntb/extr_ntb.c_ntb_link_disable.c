
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {scalar_t__ enabled; struct ntb_child* next; int dev; } ;
typedef int device_t ;


 int NTB_LINK_DISABLE (int ) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct ntb_child** device_get_softc (int ) ;

int
ntb_link_disable(device_t ntb)
{
 struct ntb_child *nc = device_get_ivars(ntb);
 struct ntb_child **cpp = device_get_softc(device_get_parent(nc->dev));
 struct ntb_child *nc1;

 if (!nc->enabled)
  return (0);
 nc->enabled = 0;
 for (nc1 = *cpp; nc1 != ((void*)0); nc1 = nc1->next) {
  if (nc1->enabled)
   return (0);
 }
 return (NTB_LINK_DISABLE(device_get_parent(ntb)));
}
