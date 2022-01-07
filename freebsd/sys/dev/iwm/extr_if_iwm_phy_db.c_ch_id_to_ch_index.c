
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int is_valid_channel (int) ;

__attribute__((used)) static uint8_t
ch_id_to_ch_index(uint16_t ch_id)
{
 if (!is_valid_channel(ch_id))
  return 0xff;

 if (ch_id <= 14)
  return ch_id - 1;
 if (ch_id <= 64)
  return (ch_id + 20) / 4;
 if (ch_id <= 140)
  return (ch_id - 12) / 4;
 return (ch_id - 13) / 4;
}
