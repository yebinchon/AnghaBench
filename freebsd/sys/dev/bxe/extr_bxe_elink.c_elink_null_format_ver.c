
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int elink_status_t ;


 int ELINK_STATUS_OK ;

__attribute__((used)) static elink_status_t elink_null_format_ver(uint32_t spirom_ver, uint8_t *str, uint16_t *len)
{
 str[0] = '\0';
 (*len)--;
 return ELINK_STATUS_OK;
}
