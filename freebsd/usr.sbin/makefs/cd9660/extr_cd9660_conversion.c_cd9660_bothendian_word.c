
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int bswap16 (int ) ;
 int memcpy (unsigned char*,int *,int) ;

void
cd9660_bothendian_word(uint16_t dw, unsigned char *fourchar)
{
 uint16_t le, be;

 le = dw;
 be = bswap16(dw);


 be = dw;
 le = bswap16(dw);

 memcpy(fourchar, &le, 2);
 memcpy((fourchar+2), &be, 2);
}
