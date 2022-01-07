
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int eeprom_version; int template_version; int* mac_addr; } ;
typedef TYPE_1__ ar9300_eeprom_t ;


 int printf (char*,int,int,int,int,int,int,int,int) ;

__attribute__((used)) static void
eeprom_9300_hdr_print(const uint16_t *buf)
{
 const ar9300_eeprom_t *ee = (ar9300_eeprom_t *) buf;

 printf("| Version: %d, Template: %d, MAC: %02x:%02x:%02x:%02x:%02x:%02x |\n",
     ee->eeprom_version,
     ee->template_version,
     ee->mac_addr[0],
     ee->mac_addr[1],
     ee->mac_addr[2],
     ee->mac_addr[3],
     ee->mac_addr[4],
     ee->mac_addr[5]);
}
