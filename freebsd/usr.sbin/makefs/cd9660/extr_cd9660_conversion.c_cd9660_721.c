
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int bswap16 (int ) ;
 int memcpy (unsigned char*,int *,int) ;

void
cd9660_721(uint16_t w, unsigned char *twochar)
{

 w = bswap16(w);

 memcpy(twochar,&w,2);
}
