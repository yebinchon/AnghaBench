
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bswap32 (int ) ;
 int memcpy (unsigned char*,int *,int) ;

void
cd9660_732(uint32_t w, unsigned char *fourchar)
{

 w = bswap32(w);

 memcpy(fourchar,&w,4);
}
