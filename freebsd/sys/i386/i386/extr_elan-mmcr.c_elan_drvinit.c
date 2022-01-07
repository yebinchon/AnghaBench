
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 int BIOS_OEM_MAXLEN ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int GID_WHEEL ;
 int UID_ROOT ;
 scalar_t__ bios_oem_strings (int *,char*,int) ;
 int bios_soekris ;
 int elan_cdevsw ;
 int elan_watchdog ;
 int gpio_config ;
 int gpio_led ;
 int* led_cookie ;
 int led_create (int ,int*,char*) ;
 int * led_dev ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int * mmcrptr ;
 int printf (char*,char*,...) ;
 int strcpy (int ,char*) ;
 int watchdog_list ;

__attribute__((used)) static void
elan_drvinit(void)
{







 if (mmcrptr == ((void*)0))
  return;

 printf("Elan-mmcr driver: MMCR at %p.%s\n",
     mmcrptr,



     ""

     );

 make_dev(&elan_cdevsw, 0,
     UID_ROOT, GID_WHEEL, 0600, "elan-mmcr");
 strcpy(gpio_config, "................................");


 EVENTHANDLER_REGISTER(watchdog_list, elan_watchdog, ((void*)0), 0);
}
