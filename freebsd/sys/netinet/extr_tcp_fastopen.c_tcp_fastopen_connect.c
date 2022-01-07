
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct TYPE_2__ {int client; } ;
struct tcpcb {scalar_t__ t_tfo_client_cookie_len; int t_flags; int t_maxseg; int snd_wnd; TYPE_1__ t_tfo_cookie; struct inpcb* t_inpcb; } ;
struct tcp_fastopen_ccache_entry {scalar_t__ disable_time; scalar_t__ cookie_len; int server_mss; scalar_t__* cookie; } ;
struct tcp_fastopen_ccache_bucket {int dummy; } ;
struct inpcb {int inp_inc; } ;
typedef int sbintime_t ;


 int CCB_UNLOCK (struct tcp_fastopen_ccache_bucket*) ;
 scalar_t__ TCP_FASTOPEN_COOKIE_LEN ;
 scalar_t__ TCP_FASTOPEN_PSK_LEN ;
 int TF_FASTOPEN ;
 scalar_t__ V_tcp_fastopen_path_disable_time ;
 int getsbinuptime () ;
 int memcpy (int ,scalar_t__*,scalar_t__) ;
 struct tcp_fastopen_ccache_entry* tcp_fastopen_ccache_lookup (int *,struct tcp_fastopen_ccache_bucket**) ;
 scalar_t__ tcp_fastopen_make_psk_cookie (int ,scalar_t__*,scalar_t__) ;
 int tcp_mss (struct tcpcb*,int) ;

void
tcp_fastopen_connect(struct tcpcb *tp)
{
 struct inpcb *inp;
 struct tcp_fastopen_ccache_bucket *ccb;
 struct tcp_fastopen_ccache_entry *cce;
 sbintime_t now;
 uint16_t server_mss;
 uint64_t psk_cookie;

 psk_cookie = 0;
 inp = tp->t_inpcb;
 cce = tcp_fastopen_ccache_lookup(&inp->inp_inc, &ccb);
 if (cce) {
  if (cce->disable_time == 0) {
   if ((cce->cookie_len > 0) &&
       (tp->t_tfo_client_cookie_len ==
        TCP_FASTOPEN_PSK_LEN)) {
    psk_cookie =
        tcp_fastopen_make_psk_cookie(
     tp->t_tfo_cookie.client,
     cce->cookie, cce->cookie_len);
   } else {
    tp->t_tfo_client_cookie_len = cce->cookie_len;
    memcpy(tp->t_tfo_cookie.client, cce->cookie,
        cce->cookie_len);
   }
   server_mss = cce->server_mss;
   CCB_UNLOCK(ccb);
   if (tp->t_tfo_client_cookie_len ==
       TCP_FASTOPEN_PSK_LEN && psk_cookie) {
    tp->t_tfo_client_cookie_len =
        TCP_FASTOPEN_COOKIE_LEN;
    memcpy(tp->t_tfo_cookie.client, &psk_cookie,
        TCP_FASTOPEN_COOKIE_LEN);
   }
   tcp_mss(tp, server_mss ? server_mss : -1);
   tp->snd_wnd = tp->t_maxseg;
  } else {




   now = getsbinuptime();
   if (now - cce->disable_time >
       ((sbintime_t)V_tcp_fastopen_path_disable_time << 32)) {






    cce->disable_time = 0;
    cce->server_mss = 0;
    cce->cookie_len = 0;




   } else {




    tp->t_flags &= ~TF_FASTOPEN;
   }
   CCB_UNLOCK(ccb);
   tcp_mss(tp, -1);





  }
 } else {




  CCB_UNLOCK(ccb);
  tcp_mss(tp, -1);




 }
}
