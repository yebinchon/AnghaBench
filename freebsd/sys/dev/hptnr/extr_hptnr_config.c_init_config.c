
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_module_him_dc7280 () ;
 int init_module_him_r750 () ;
 int init_module_vdev_raw () ;

int init_config(void)
{
 init_module_him_r750();
 init_module_him_dc7280();
 init_module_vdev_raw();
 return 0;
}
