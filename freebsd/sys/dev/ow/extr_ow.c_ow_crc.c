
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int device_t ;


 size_t* ow_crc_table ;

__attribute__((used)) static uint8_t
ow_crc(device_t ndev, device_t pdev, uint8_t *buffer, size_t len)
{
 uint8_t crc = 0;
 int i;

 for (i = 0; i < len; i++)
  crc = ow_crc_table[crc ^ buffer[i]];
 return crc;
}
