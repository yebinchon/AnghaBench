
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ewah_bitmap {int buffer_size; scalar_t__ bit_size; scalar_t__ buffer; } ;
typedef int eword_t ;



uint32_t ewah_checksum(struct ewah_bitmap *self)
{
 const uint8_t *p = (uint8_t *)self->buffer;
 uint32_t crc = (uint32_t)self->bit_size;
 size_t size = self->buffer_size * sizeof(eword_t);

 while (size--)
  crc = (crc << 5) - crc + (uint32_t)*p++;

 return crc;
}
