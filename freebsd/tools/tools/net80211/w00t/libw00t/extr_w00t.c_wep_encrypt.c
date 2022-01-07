
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uLong ;
struct ieee80211_frame {int dummy; } ;
typedef int seed ;
typedef int RC4_KEY ;


 int RC4 (int *,int,char*,char*) ;
 int RC4_set_key (int *,int,char*) ;
 char* Z_NULL ;
 int assert (int) ;
 long crc32 (long,char*,int) ;
 int memcpy (char*,char*,int) ;

void wep_encrypt(struct ieee80211_frame *wh, int len, char *key, int klen)
{
 RC4_KEY k;
 char seed[64];
 char *p = (char*) (wh+1);
 uLong crc = crc32(0L, Z_NULL, 0);
 uLong *pcrc;

 assert(sizeof(seed) >= klen + 3);
 memcpy(seed, p, 3);
 memcpy(&seed[3], key, klen);

 RC4_set_key(&k, klen+3, seed);

 len -= sizeof(*wh);
 p += 4;
 crc = crc32(crc, p, len - 4);
 pcrc = (uLong*) (p+len-4);
 *pcrc = crc;

 RC4(&k, len, p, p);
}
