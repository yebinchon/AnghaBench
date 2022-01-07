
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {int enabled; struct ntb_child* next; int dev; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef int device_t ;


 int NTB_LINK_ENABLE (int ,int,int) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;
 struct ntb_child** device_get_softc (int ) ;

int
ntb_link_enable(device_t ntb, enum ntb_speed speed, enum ntb_width width)
{
 struct ntb_child *nc = device_get_ivars(ntb);
 struct ntb_child **cpp = device_get_softc(device_get_parent(nc->dev));
 struct ntb_child *nc1;

 for (nc1 = *cpp; nc1 != ((void*)0); nc1 = nc1->next) {
  if (nc1->enabled) {
   nc->enabled = 1;
   return (0);
  }
 }
 nc->enabled = 1;
 return (NTB_LINK_ENABLE(device_get_parent(ntb), speed, width));
}
