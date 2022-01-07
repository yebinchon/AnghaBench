
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int rtwn_get_multi_pos (int ) ;

__attribute__((used)) static u_int
rtwm_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t *mfilt = arg;
 uint8_t pos;

 pos = rtwn_get_multi_pos(LLADDR(sdl));
 mfilt[pos / 32] |= (1 << (pos % 32));

 return (1);
}
