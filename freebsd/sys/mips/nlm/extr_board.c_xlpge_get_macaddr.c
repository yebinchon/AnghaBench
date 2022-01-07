
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t EEPROM_MACADDR_OFFSET ;
 int ETHER_ADDR_LEN ;
 int * board_eeprom_buf ;
 scalar_t__ board_eeprom_set ;
 int memcpy (int*,int *,int ) ;

void
xlpge_get_macaddr(uint8_t *macaddr)
{

 if (board_eeprom_set == 0) {

  macaddr[0] = 0x00; macaddr[1] = 0x0f; macaddr[2] = 0x30;
  macaddr[3] = 0x20; macaddr[4] = 0x0d; macaddr[5] = 0x5b;
 } else
  memcpy(macaddr, &board_eeprom_buf[EEPROM_MACADDR_OFFSET],
      ETHER_ADDR_LEN);
}
