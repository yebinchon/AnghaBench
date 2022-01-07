
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_dev {int dummy; } ;


 scalar_t__ ECORE_IS_BB (struct ecore_dev*) ;

int ecore_device_num_engines(struct ecore_dev *p_dev)
{
 return ECORE_IS_BB(p_dev) ? 2 : 1;
}
