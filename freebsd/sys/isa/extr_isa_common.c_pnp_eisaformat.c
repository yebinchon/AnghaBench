
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int htole32 (int ) ;

char *
pnp_eisaformat(uint32_t id)
{
 uint8_t *data;
 static char idbuf[8];
 const char hextoascii[] = "0123456789abcdef";

 id = htole32(id);
 data = (uint8_t *)&id;
 idbuf[0] = '@' + ((data[0] & 0x7c) >> 2);
 idbuf[1] = '@' + (((data[0] & 0x3) << 3) + ((data[1] & 0xe0) >> 5));
 idbuf[2] = '@' + (data[1] & 0x1f);
 idbuf[3] = hextoascii[(data[2] >> 4)];
 idbuf[4] = hextoascii[(data[2] & 0xf)];
 idbuf[5] = hextoascii[(data[3] >> 4)];
 idbuf[6] = hextoascii[(data[3] & 0xf)];
 idbuf[7] = 0;
 return(idbuf);
}
