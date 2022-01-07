
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
typedef int uint16_t ;
struct ieee80211vap {TYPE_1__* iv_ifp; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_alq_rec {int r_wlan; void* r_threadid; void* r_len; void* r_op; void* r_flags; void* r_src; int r_timestamp; } ;
struct ale {scalar_t__ ae_data; } ;
struct TYPE_4__ {scalar_t__ td_tid; } ;
struct TYPE_3__ {int if_dunit; } ;


 int ENOMEM ;
 size_t IEEE80211_ALQ_MAX_PAYLOAD ;
 int alq_post (int *,struct ale*) ;
 TYPE_2__* curthread ;
 void* htobe16 (int ) ;
 void* htobe32 (size_t) ;
 int htobe64 (int ) ;
 int * ieee80211_alq ;
 struct ale* ieee80211_alq_get (size_t) ;
 int memcpy (char*,int const*,size_t) ;
 int ticks ;

int
ieee80211_alq_log(struct ieee80211com *ic, struct ieee80211vap *vap,
    uint32_t op, uint32_t flags, uint16_t srcid, const uint8_t *src,
    size_t len)
{
 struct ale *ale;
 struct ieee80211_alq_rec *r;
 char *dst;


 if (ieee80211_alq == ((void*)0))
  return (0);

 if (len > IEEE80211_ALQ_MAX_PAYLOAD)
  return (ENOMEM);

 ale = ieee80211_alq_get(len);
 if (! ale)
  return (ENOMEM);

 r = (struct ieee80211_alq_rec *) ale->ae_data;
 dst = ((char *) r) + sizeof(struct ieee80211_alq_rec);
 r->r_timestamp = htobe64(ticks);
 if (vap != ((void*)0)) {
  r->r_wlan = htobe16(vap->iv_ifp->if_dunit);
 } else {
  r->r_wlan = 0xffff;
 }
 r->r_src = htobe16(srcid);
 r->r_flags = htobe32(flags);
 r->r_op = htobe32(op);
 r->r_len = htobe32(len + sizeof(struct ieee80211_alq_rec));
 r->r_threadid = htobe32((uint32_t) curthread->td_tid);

 if (src != ((void*)0))
  memcpy(dst, src, len);

 alq_post(ieee80211_alq, ale);

 return (0);
}
