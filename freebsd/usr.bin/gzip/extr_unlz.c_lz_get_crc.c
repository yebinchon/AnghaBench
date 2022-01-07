
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz_decoder {int crc; } ;



__attribute__((used)) static unsigned
lz_get_crc(const struct lz_decoder *lz)
{
 return lz->crc ^ 0xffffffffU;
}
