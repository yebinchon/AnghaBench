
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int MAX_DICTIONARY_SIZE ;
 unsigned int MIN_DICTIONARY_SIZE ;

__attribute__((used)) static unsigned
lz_get_dict_size(unsigned char c)
{
 unsigned dict_size = 1 << (c & 0x1f);
 dict_size -= (dict_size >> 2) * ( (c >> 5) & 0x7);
 if (dict_size < MIN_DICTIONARY_SIZE || dict_size > MAX_DICTIONARY_SIZE)
  return 0;
 return dict_size;
}
