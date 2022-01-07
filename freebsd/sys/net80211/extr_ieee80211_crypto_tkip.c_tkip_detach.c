
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tkip_ctx {int dummy; } ;
struct ieee80211_key {struct tkip_ctx* wk_private; } ;


 int IEEE80211_FREE (struct tkip_ctx*,int ) ;
 int KASSERT (int,char*) ;
 int M_80211_CRYPTO ;
 scalar_t__ nrefs ;

__attribute__((used)) static void
tkip_detach(struct ieee80211_key *k)
{
 struct tkip_ctx *ctx = k->wk_private;

 IEEE80211_FREE(ctx, M_80211_CRYPTO);
 KASSERT(nrefs > 0, ("imbalanced attach/detach"));
 nrefs--;
}
