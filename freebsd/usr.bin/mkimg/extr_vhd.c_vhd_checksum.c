
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static uint32_t
vhd_checksum(void *buf, size_t sz)
{
 uint8_t *p = buf;
 uint32_t sum;
 size_t ofs;

 sum = 0;
 for (ofs = 0; ofs < sz; ofs++)
  sum += p[ofs];
 return (~sum);
}
