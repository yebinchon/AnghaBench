
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_2__ {unsigned int newest_psk; int * psk; } ;


 int TCP_FASTOPEN_COOKIE_LEN ;
 int TCP_FASTOPEN_MAX_PSKS ;
 TYPE_1__ V_tcp_fastopen_keys ;
 unsigned int V_tcp_fastopen_numpsks ;
 scalar_t__ V_tcp_fastopen_psk_enable ;
 scalar_t__ memcmp (int *,int *,int ) ;
 int tcp_fastopen_make_psk_cookie (int ,int *,int ) ;

__attribute__((used)) static int
tcp_fastopen_find_cookie_match_locked(uint8_t *wire_cookie, uint64_t *cur_cookie)
{
 unsigned int i, psk_index;
 uint64_t psk_cookie;

 if (V_tcp_fastopen_psk_enable) {
  psk_index = V_tcp_fastopen_keys.newest_psk;
  for (i = 0; i < V_tcp_fastopen_numpsks; i++) {
   psk_cookie =
       tcp_fastopen_make_psk_cookie(
     V_tcp_fastopen_keys.psk[psk_index],
     (uint8_t *)cur_cookie,
     TCP_FASTOPEN_COOKIE_LEN);

   if (memcmp(wire_cookie, &psk_cookie,
       TCP_FASTOPEN_COOKIE_LEN) == 0)
    return (1);

   if (psk_index == 0)
    psk_index = TCP_FASTOPEN_MAX_PSKS - 1;
   else
    psk_index--;
  }
 } else if (memcmp(wire_cookie, cur_cookie, TCP_FASTOPEN_COOKIE_LEN) == 0)
  return (1);

 return (0);
}
