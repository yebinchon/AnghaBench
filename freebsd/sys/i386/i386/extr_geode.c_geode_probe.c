
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int device_t ;


 int BIOS_OEM_MAXLEN ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int PCIR_BAR (int ) ;
 int advantech_watchdog ;
 int bios_advantech ;
 int bios_oem_strings (int *,char*,int) ;
 int bios_pcengines ;
 int bios_pcengines_55 ;
 int bios_soekris ;
 int bios_soekris_55 ;
 int bootverbose ;
 int cba ;
 int cs5536_led_func (int*,int) ;
 int cs5536_watchdog ;
 int geode_counter ;
 int geode_cputicks ;
 int geode_timecounter ;
 int geode_watchdog ;
 int gpio ;
 int inb (int ) ;
 void* led1 ;
 int led1b ;
 void* led2 ;
 int led2b ;
 void* led3 ;
 int led3b ;
 void* led_create (int (*) (int*,int),int*,char*) ;
 int led_func (int*,int) ;
 int outl (int ,int) ;
 int pci_get_devid (int ) ;
 int pci_read_config (int ,int,int) ;
 int printf (char*,...) ;
 char* rdmsr (int) ;
 int set_cputicker (int ,int,int ) ;
 int tc_init (int *) ;
 int watchdog_list ;

__attribute__((used)) static int
geode_probe(device_t self)
{

 static u_char bios_oem[80] = "\0";

 switch (pci_get_devid(self)) {
 case 0x0515100b:
  if (geode_counter == 0) {




   cba = pci_read_config(self, 0x64, 4);
   if (bootverbose)
    printf("Geode CBA@ 0x%x\n", cba);
   geode_counter = cba + 0x08;
   outl(cba + 0x0d, 2);
   if (bootverbose)
    printf("Geode rev: %02x %02x\n",
     inb(cba + 0x3c), inb(cba + 0x3d));
   tc_init(&geode_timecounter);
   EVENTHANDLER_REGISTER(watchdog_list, geode_watchdog,
       ((void*)0), 0);
   set_cputicker(geode_cputicks, 27000000, 0);
  }
  break;
 case 0x0510100b:
  gpio = pci_read_config(self, PCIR_BAR(0), 4);
  gpio &= ~0x1f;
  if (bootverbose)
   printf("Geode GPIO@ = %x\n", gpio);
  if (bios_oem_strings(&bios_soekris,
      bios_oem, sizeof bios_oem) > 0 ) {
   led1b = 20;
   led1 = led_create(led_func, &led1b, "error");
  } else if (bios_oem_strings(&bios_pcengines,
      bios_oem, sizeof bios_oem) > 0 ) {
   led1b = -2;
   led2b = -3;
   led3b = -18;
   led1 = led_create(led_func, &led1b, "led1");
   led2 = led_create(led_func, &led2b, "led2");
   led3 = led_create(led_func, &led3b, "led3");




   led_func(&led1b, 1);
  }
  if (*bios_oem)
   printf("Geode %s\n", bios_oem);
  break;
 case 0x01011078:
  if (bios_oem_strings(&bios_advantech,
      bios_oem, sizeof bios_oem) > 0 ) {
   printf("Geode %s\n", bios_oem);
   EVENTHANDLER_REGISTER(watchdog_list, advantech_watchdog,
       ((void*)0), 0);
  }
  break;
 case 0x20801022:
  if (bios_oem_strings(&bios_soekris_55,
      bios_oem, sizeof bios_oem) > 0 ) {
   led1b = 6;
   led1 = led_create(cs5536_led_func, &led1b, "error");
  } else if (bios_oem_strings(&bios_pcengines_55,
      bios_oem, sizeof bios_oem) > 0 ) {
   led1b = -6;
   led2b = -25;
   led3b = -27;
   led1 = led_create(cs5536_led_func, &led1b, "led1");
   led2 = led_create(cs5536_led_func, &led2b, "led2");
   led3 = led_create(cs5536_led_func, &led3b, "led3");




   cs5536_led_func(&led1b, 1);
  }
  if (*bios_oem)
   printf("Geode LX: %s\n", bios_oem);
  if (bootverbose)
   printf("MFGPT bar: %jx\n", rdmsr(0x5140000d));
  EVENTHANDLER_REGISTER(watchdog_list, cs5536_watchdog, ((void*)0), 0);
  break;
 }
 return (ENXIO);
}
