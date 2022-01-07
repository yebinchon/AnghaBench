
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_dev {int num_ports; } ;



int ecore_device_num_ports(struct ecore_dev *p_dev)
{
 return p_dev->num_ports;
}
