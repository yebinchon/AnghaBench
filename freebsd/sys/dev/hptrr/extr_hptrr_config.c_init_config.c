
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_module_him_rr1720 () ;
 int init_module_him_rr174x_rr2210pm () ;
 int init_module_him_rr222x_rr2240 () ;
 int init_module_him_rr2310pm () ;
 int init_module_him_rr232x () ;
 int init_module_him_rr2340 () ;
 int init_module_him_rr2522pm () ;
 int init_module_jbod () ;
 int init_module_partition () ;
 int init_module_raid0 () ;
 int init_module_raid1 () ;
 int init_module_raid5 () ;
 int init_module_vdev_raw () ;

int init_config(void)
{
 init_module_him_rr2310pm();
 init_module_him_rr174x_rr2210pm();
 init_module_him_rr2522pm();
 init_module_him_rr2340();
 init_module_him_rr222x_rr2240();
 init_module_him_rr1720();
 init_module_him_rr232x();
 init_module_vdev_raw();
 init_module_partition();
 init_module_raid0();
 init_module_raid1();
 init_module_raid5();
 init_module_jbod();
 return 0;
}
