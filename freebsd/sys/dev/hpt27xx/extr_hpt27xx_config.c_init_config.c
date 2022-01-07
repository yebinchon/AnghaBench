
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_module_him_rr2720 () ;
 int init_module_him_rr273x () ;
 int init_module_him_rr276x () ;
 int init_module_him_rr278x () ;
 int init_module_jbod () ;
 int init_module_partition () ;
 int init_module_raid0 () ;
 int init_module_raid1 () ;
 int init_module_raid5 () ;
 int init_module_vdev_raw () ;

int init_config(void)
{
 init_module_him_rr2720();
 init_module_him_rr273x();
 init_module_him_rr276x();
 init_module_him_rr278x();
 init_module_vdev_raw();
 init_module_partition();
 init_module_raid0();
 init_module_raid1();
 init_module_raid5();
 init_module_jbod();
 return 0;
}
