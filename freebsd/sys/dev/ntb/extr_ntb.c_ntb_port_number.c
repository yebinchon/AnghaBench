
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int NTB_PORT_NUMBER (int ) ;
 int device_get_parent (int ) ;

int
ntb_port_number(device_t ntb)
{
 return (NTB_PORT_NUMBER(device_get_parent(ntb)));
}
