
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 char* LLADDR (struct sockaddr_dl*) ;
 int le32dec (char*) ;

__attribute__((used)) static u_int
ath_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t val, *mfilt = arg;
 char *dl;
 uint8_t pos;


 dl = LLADDR(sdl);
 val = le32dec(dl + 0);
 pos = (val >> 18) ^ (val >> 12) ^ (val >> 6) ^ val;
 val = le32dec(dl + 3);
 pos ^= (val >> 18) ^ (val >> 12) ^ (val >> 6) ^ val;
 pos &= 0x3f;
 mfilt[pos / 32] |= (1 << (pos % 32));

 return (1);
}
