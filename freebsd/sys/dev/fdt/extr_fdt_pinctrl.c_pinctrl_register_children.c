
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ phandle_t ;
typedef int device_t ;


 scalar_t__ OF_child (scalar_t__) ;
 int OF_device_register_xref (int ,int ) ;
 scalar_t__ OF_hasprop (scalar_t__,char const*) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int OF_xref_from_node (scalar_t__) ;

__attribute__((used)) static int
pinctrl_register_children(device_t pinctrl, phandle_t parent,
    const char *pinprop)
{
 phandle_t node;





 for (node = OF_child(parent); node != 0; node = OF_peer(node)) {
  pinctrl_register_children(pinctrl, node, pinprop);
  if (pinprop == ((void*)0) || OF_hasprop(node, pinprop)) {
   OF_device_register_xref(OF_xref_from_node(node),
       pinctrl);
  }
 }
 return (0);
}
