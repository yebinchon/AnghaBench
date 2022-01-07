
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bswap32 (int ) ;
 int memcpy (unsigned char*,int *,int) ;

void
cd9660_bothendian_dword(uint32_t dw, unsigned char *eightchar)
{
 uint32_t le, be;

 le = dw;
 be = bswap32(dw);


 be = dw;
 le = bswap32(dw);

 memcpy(eightchar, &le, 4);
 memcpy((eightchar+4), &be, 4);
}
