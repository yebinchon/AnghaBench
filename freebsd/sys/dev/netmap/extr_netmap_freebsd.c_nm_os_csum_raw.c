
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int rawsum_t ;


 scalar_t__ be16toh (int ) ;

rawsum_t
nm_os_csum_raw(uint8_t *data, size_t len, rawsum_t cur_sum)
{

 uint16_t *words = (uint16_t *)data;
 int nw = len / 2;
 int i;

 for (i = 0; i < nw; i++)
  cur_sum += be16toh(words[i]);

 if (len & 1)
  cur_sum += (data[len-1] << 8);

 return cur_sum;
}
