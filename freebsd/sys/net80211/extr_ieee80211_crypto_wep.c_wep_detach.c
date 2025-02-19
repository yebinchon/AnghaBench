
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wep_ctx {int dummy; } ;
struct ieee80211_key {struct wep_ctx* wk_private; } ;


 int IEEE80211_FREE (struct wep_ctx*,int ) ;
 int KASSERT (int,char*) ;
 int M_80211_CRYPTO ;
 scalar_t__ nrefs ;

__attribute__((used)) static void
wep_detach(struct ieee80211_key *k)
{
 struct wep_ctx *ctx = k->wk_private;

 IEEE80211_FREE(ctx, M_80211_CRYPTO);
 KASSERT(nrefs > 0, ("imbalanced attach/detach"));
 nrefs--;
}
