
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* eeprom_strings; int dev; int serial_number_string; int product_code_string; int * mac_addr; } ;
typedef TYPE_1__ mxge_softc_t ;


 int ENXIO ;
 int device_printf (int ,char*) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtoul (char*,char**,int) ;

__attribute__((used)) static int
mxge_parse_strings(mxge_softc_t *sc)
{
 char *ptr;
 int i, found_mac, found_sn2;
 char *endptr;

 ptr = sc->eeprom_strings;
 found_mac = 0;
 found_sn2 = 0;
 while (*ptr != '\0') {
  if (strncmp(ptr, "MAC=", 4) == 0) {
   ptr += 4;
   for (i = 0;;) {
    sc->mac_addr[i] = strtoul(ptr, &endptr, 16);
    if (endptr - ptr != 2)
     goto abort;
    ptr = endptr;
    if (++i == 6)
     break;
    if (*ptr++ != ':')
     goto abort;
   }
   found_mac = 1;
  } else if (strncmp(ptr, "PC=", 3) == 0) {
   ptr += 3;
   strlcpy(sc->product_code_string, ptr,
       sizeof(sc->product_code_string));
  } else if (!found_sn2 && (strncmp(ptr, "SN=", 3) == 0)) {
   ptr += 3;
   strlcpy(sc->serial_number_string, ptr,
       sizeof(sc->serial_number_string));
  } else if (strncmp(ptr, "SN2=", 4) == 0) {

   ptr += 4;
   found_sn2 = 1;
   strlcpy(sc->serial_number_string, ptr,
       sizeof(sc->serial_number_string));
  }
  while (*ptr++ != '\0') {}
 }

 if (found_mac)
  return 0;

 abort:
 device_printf(sc->dev, "failed to parse eeprom_strings\n");

 return ENXIO;
}
