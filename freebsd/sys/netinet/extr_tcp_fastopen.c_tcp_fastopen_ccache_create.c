
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {int v6; int v4; } ;
struct TYPE_4__ {int v6; int v4; } ;
struct tcp_fastopen_ccache_entry {scalar_t__ af; int cookie_len; scalar_t__ disable_time; scalar_t__ server_mss; int cookie; int server_port; TYPE_2__ cce_server_ip; TYPE_1__ cce_client_ip; } ;
struct tcp_fastopen_ccache_bucket {scalar_t__ ccb_num_entries; int ccb_entries; } ;
struct in_conninfo {int inc_flags; int inc_fport; int inc6_faddr; int inc6_laddr; int inc_faddr; int inc_laddr; } ;
struct TYPE_6__ {scalar_t__ bucket_limit; int zone; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int CCB_LOCK_ASSERT (struct tcp_fastopen_ccache_bucket*) ;
 int INC_ISIPV6 ;
 int M_NOWAIT ;
 int TAILQ_INSERT_HEAD (int *,struct tcp_fastopen_ccache_entry*,int ) ;
 struct tcp_fastopen_ccache_entry* TAILQ_LAST (int *,int ) ;
 int TAILQ_REMOVE (int *,struct tcp_fastopen_ccache_entry*,int ) ;
 int TCP_FASTOPEN_MAX_COOKIE_LEN ;
 int TCP_FASTOPEN_MIN_COOKIE_LEN ;
 TYPE_3__ V_tcp_fastopen_ccache ;
 int bucket_entries ;
 int cce_link ;
 scalar_t__ getsbinuptime () ;
 int memcpy (int ,int*,int) ;
 struct tcp_fastopen_ccache_entry* uma_zalloc (int ,int ) ;

__attribute__((used)) static struct tcp_fastopen_ccache_entry *
tcp_fastopen_ccache_create(struct tcp_fastopen_ccache_bucket *ccb,
    struct in_conninfo *inc, uint16_t mss, uint8_t cookie_len, uint8_t *cookie)
{
 struct tcp_fastopen_ccache_entry *cce;







 CCB_LOCK_ASSERT(ccb);

 cce = ((void*)0);
 if (ccb->ccb_num_entries < V_tcp_fastopen_ccache.bucket_limit)
  cce = uma_zalloc(V_tcp_fastopen_ccache.zone, M_NOWAIT);

 if (cce == ((void*)0)) {




  cce = TAILQ_LAST(&ccb->ccb_entries, bucket_entries);
  if (cce == ((void*)0)) {

   return (((void*)0));
  }

  TAILQ_REMOVE(&ccb->ccb_entries, cce, cce_link);
 } else
  ccb->ccb_num_entries++;

 TAILQ_INSERT_HEAD(&ccb->ccb_entries, cce, cce_link);
 cce->af = (inc->inc_flags & INC_ISIPV6) ? AF_INET6 : AF_INET;
 if (cce->af == AF_INET) {
  cce->cce_client_ip.v4 = inc->inc_laddr;
  cce->cce_server_ip.v4 = inc->inc_faddr;
 } else {
  cce->cce_client_ip.v6 = inc->inc6_laddr;
  cce->cce_server_ip.v6 = inc->inc6_faddr;
 }
 cce->server_port = inc->inc_fport;
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
  cce->disable_time = getsbinuptime();
 }

 return (cce);
}
