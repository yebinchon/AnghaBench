
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_cb {int arg; int (* func ) (struct ieee80211_node*,int ,int) ;} ;


 int MTAG_ABI_NET80211 ;
 int NET80211_TAG_CALLBACK ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int stub1 (struct ieee80211_node*,int ,int) ;

void
ieee80211_process_callback(struct ieee80211_node *ni,
 struct mbuf *m, int status)
{
 struct m_tag *mtag;

 mtag = m_tag_locate(m, MTAG_ABI_NET80211, NET80211_TAG_CALLBACK, ((void*)0));
 if (mtag != ((void*)0)) {
  struct ieee80211_cb *cb = (struct ieee80211_cb *)(mtag+1);
  cb->func(ni, cb->arg, status);
 }
}
