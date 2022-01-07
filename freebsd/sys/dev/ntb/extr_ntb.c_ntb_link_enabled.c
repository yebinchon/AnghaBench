
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {scalar_t__ enabled; } ;
typedef int device_t ;


 scalar_t__ NTB_LINK_ENABLED (int ) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

bool
ntb_link_enabled(device_t ntb)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return (nc->enabled && NTB_LINK_ENABLED(device_get_parent(ntb)));
}
