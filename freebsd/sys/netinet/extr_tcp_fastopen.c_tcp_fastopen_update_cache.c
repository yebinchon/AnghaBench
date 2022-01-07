
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct tcpcb {TYPE_1__* t_inpcb; } ;
struct tcp_fastopen_ccache_entry {int cookie_len; scalar_t__ disable_time; scalar_t__ server_mss; int cookie; } ;
struct tcp_fastopen_ccache_bucket {int dummy; } ;
struct in_conninfo {int dummy; } ;
struct TYPE_2__ {struct in_conninfo inp_inc; } ;


 int CCB_UNLOCK (struct tcp_fastopen_ccache_bucket*) ;
 int TCP_FASTOPEN_MAX_COOKIE_LEN ;
 int TCP_FASTOPEN_MIN_COOKIE_LEN ;
 scalar_t__ getsbinuptime () ;
 int memcpy (int ,int*,int) ;
 int tcp_fastopen_ccache_create (struct tcp_fastopen_ccache_bucket*,struct in_conninfo*,scalar_t__,int,int*) ;
 struct tcp_fastopen_ccache_entry* tcp_fastopen_ccache_lookup (struct in_conninfo*,struct tcp_fastopen_ccache_bucket**) ;

void
tcp_fastopen_update_cache(struct tcpcb *tp, uint16_t mss,
    uint8_t cookie_len, uint8_t *cookie)
{
 struct in_conninfo *inc = &tp->t_inpcb->inp_inc;
 struct tcp_fastopen_ccache_bucket *ccb;
 struct tcp_fastopen_ccache_entry *cce;

 cce = tcp_fastopen_ccache_lookup(inc, &ccb);
 if (cce) {
  if ((cookie_len >= TCP_FASTOPEN_MIN_COOKIE_LEN) &&
      (cookie_len <= TCP_FASTOPEN_MAX_COOKIE_LEN) &&
      ((cookie_len & 0x1) == 0)) {
   cce->server_mss = mss;
   cce->cookie_len = cookie_len;
   memcpy(cce->cookie, cookie, cookie_len);
   cce->disable_time = 0;
  } else {

   cce->server_mss = 0;
   cce->cookie_len = 0;




   if (cce->disable_time == 0)
    cce->disable_time = getsbinuptime();
  }
 } else
  tcp_fastopen_ccache_create(ccb, inc, mss, cookie_len, cookie);

 CCB_UNLOCK(ccb);
}
