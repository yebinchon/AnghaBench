
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ich_arg; int ich_func; } ;


 scalar_t__ bootverbose ;
 scalar_t__ config_intrhook_establish (TYPE_1__*) ;
 char* driver_name_long ;
 int driver_ver ;
 int hpt_final_init ;
 TYPE_1__ hpt_ich ;
 int init_config () ;
 int os_printk (char*,char*,int ) ;
 int override_kernel_driver () ;
 int printf (char*,char*) ;

__attribute__((used)) static void hpt_init(void *dummy)
{
 if (bootverbose)
  os_printk("%s %s", driver_name_long, driver_ver);

 override_kernel_driver();
 init_config();

 hpt_ich.ich_func = hpt_final_init;
 hpt_ich.ich_arg = ((void*)0);
 if (config_intrhook_establish(&hpt_ich) != 0) {
  printf("%s: cannot establish configuration hook\n",
      driver_name_long);
 }

}
