
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int OF_peer (int ) ;
 int pinctrl_configure_children (int ,int ) ;

int
fdt_pinctrl_configure_tree(device_t pinctrl)
{

 return (pinctrl_configure_children(pinctrl, OF_peer(0)));
}
