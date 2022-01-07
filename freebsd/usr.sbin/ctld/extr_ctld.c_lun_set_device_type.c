
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lun {int l_device_type; } ;



void
lun_set_device_type(struct lun *lun, uint8_t value)
{

 lun->l_device_type = value;
}
