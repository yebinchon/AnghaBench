
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static int
is_valid_channel(uint16_t ch_id)
{
 if (ch_id <= 14 ||
     (36 <= ch_id && ch_id <= 64 && ch_id % 4 == 0) ||
     (100 <= ch_id && ch_id <= 140 && ch_id % 4 == 0) ||
     (145 <= ch_id && ch_id <= 165 && ch_id % 4 == 1))
  return 1;
 return 0;
}
