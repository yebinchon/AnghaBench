
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int elink_status_t ;


 int ELINK_STATUS_OK ;
 int elink_format_ver (int,int *,int *) ;

__attribute__((used)) static elink_status_t elink_848xx_format_ver(uint32_t raw_ver, uint8_t *str, uint16_t *len)
{
 elink_status_t status = ELINK_STATUS_OK;
 uint32_t spirom_ver;
 spirom_ver = ((raw_ver & 0xF80) >> 7) << 16 | (raw_ver & 0x7F);
 status = elink_format_ver(spirom_ver, str, len);
 return status;
}
