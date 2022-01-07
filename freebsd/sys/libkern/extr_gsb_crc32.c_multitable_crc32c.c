
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int crc32c_sb8_64_bit (int,unsigned char const*,unsigned int,int) ;

__attribute__((used)) static uint32_t
multitable_crc32c(uint32_t crc32c,
    const unsigned char *buffer,
    unsigned int length)
{
 uint32_t to_even_word;

 if (length == 0) {
  return (crc32c);
 }
 to_even_word = (4 - (((uintptr_t) buffer) & 0x3));
 return (crc32c_sb8_64_bit(crc32c, buffer, length, to_even_word));
}
