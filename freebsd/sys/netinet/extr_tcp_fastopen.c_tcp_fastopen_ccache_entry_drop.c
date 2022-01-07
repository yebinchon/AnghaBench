
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_fastopen_ccache_entry {int dummy; } ;
struct tcp_fastopen_ccache_bucket {int ccb_num_entries; int ccb_entries; } ;
struct TYPE_2__ {int zone; } ;


 int CCB_LOCK_ASSERT (struct tcp_fastopen_ccache_bucket*) ;
 int TAILQ_REMOVE (int *,struct tcp_fastopen_ccache_entry*,int ) ;
 TYPE_1__ V_tcp_fastopen_ccache ;
 int cce_link ;
 int uma_zfree (int ,struct tcp_fastopen_ccache_entry*) ;

__attribute__((used)) static void
tcp_fastopen_ccache_entry_drop(struct tcp_fastopen_ccache_entry *cce,
    struct tcp_fastopen_ccache_bucket *ccb)
{

 CCB_LOCK_ASSERT(ccb);

 TAILQ_REMOVE(&ccb->ccb_entries, cce, cce_link);
 ccb->ccb_num_entries--;
 uma_zfree(V_tcp_fastopen_ccache.zone, cce);
}
