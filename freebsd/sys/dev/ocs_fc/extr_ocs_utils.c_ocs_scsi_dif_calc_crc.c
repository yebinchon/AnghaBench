
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;


 int t10crc16 (int const*,int ,int ) ;

uint16_t
ocs_scsi_dif_calc_crc(const uint8_t *buffer, uint32_t size, uint16_t crc)
{
 return t10crc16(buffer, size, crc);
}
