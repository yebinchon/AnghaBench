
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long uLong ;
struct TYPE_2__ {int len; int * prga; int iv; } ;


 unsigned char* Z_NULL ;
 int assert (int) ;
 long crc32 (long,unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 TYPE_1__ prgainfo ;

void wepify(unsigned char* body, int dlen) {
 uLong crc;
 unsigned long *pcrc;
 int i;

 assert(dlen + 4 <= prgainfo.len);


 memcpy(body, prgainfo.iv, 3);
 body +=3;
 *body++ = 0;


 crc = crc32(0L, Z_NULL, 0);
 crc = crc32(crc, body, dlen);
 pcrc = (unsigned long*) (body+dlen);
 *pcrc = crc;

 for (i = 0; i < dlen +4; i++)
  *body++ ^= prgainfo.prga[i];
}
