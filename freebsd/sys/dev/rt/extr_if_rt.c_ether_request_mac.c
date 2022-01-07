
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int device_get_name (int ) ;
 char* device_get_nameunit (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int freeenv (char*) ;
 int generate_mac (int*) ;
 char* kern_getenv (char*) ;
 int macaddr_atoi (char*,int*) ;
 int printf (char*,char*,char*) ;
 int resource_string_value (int ,int ,char*,char const**) ;

__attribute__((used)) static int
ether_request_mac(device_t dev, uint8_t *mac)
{
 char *var;
 if (!resource_string_value(device_get_name(dev),
     device_get_unit(dev), "macaddr", (const char **)&var)) {

  if(!macaddr_atoi(var, mac)) {
   printf("%s: use %s macaddr from hints\n",
       device_get_nameunit(dev), var);
   return (0);
  }
 }
 mac[0] = 0x00;
 mac[1] = 0x18;
 mac[2] = 0xe7;
 mac[3] = 0xd5;
 mac[4] = 0x83;
 mac[5] = 0x90;

 device_printf(dev, "use hardcoded 00:18:e7:d5:83:90 macaddr\n");


 return (0);
}
