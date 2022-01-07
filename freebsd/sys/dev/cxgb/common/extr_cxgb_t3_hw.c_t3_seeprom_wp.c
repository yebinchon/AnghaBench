
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int EEPROM_STAT_ADDR ;
 int t3_seeprom_write (int *,int ,int) ;

int t3_seeprom_wp(adapter_t *adapter, int enable)
{
 return t3_seeprom_write(adapter, EEPROM_STAT_ADDR, enable ? 0xc : 0);
}
