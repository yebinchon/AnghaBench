
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



__attribute__((used)) static inline void ecore_get_fw_mac_addr(uint16_t *fw_hi, uint16_t *fw_mid,
      uint16_t *fw_lo, uint8_t *mac)
{
 mac[1] = ((uint8_t *)fw_hi)[0];
 mac[0] = ((uint8_t *)fw_hi)[1];
 mac[3] = ((uint8_t *)fw_mid)[0];
 mac[2] = ((uint8_t *)fw_mid)[1];
 mac[5] = ((uint8_t *)fw_lo)[0];
 mac[4] = ((uint8_t *)fw_lo)[1];
}
