
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
typedef int qla_host_t ;



__attribute__((used)) static uint16_t
qla_tmplt_16bit_checksum(qla_host_t *ha, uint16_t *buf, uint32_t size)
{
 uint32_t sum = 0;
 uint32_t count = size >> 1;

 while (count-- > 0)
  sum += *buf++;

 while (sum >> 16)
  sum = (sum & 0xFFFF) + (sum >> 16);

 return (~sum);
}
