
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ieee80211_tx_params {int params; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int MTAG_ABI_NET80211 ;
 int M_NOWAIT ;
 int NET80211_TAG_XMIT_PARAMS ;
 struct m_tag* m_tag_alloc (int ,int ,int,int ) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int memcpy (int *,struct ieee80211_bpf_params const*,int) ;

int
ieee80211_add_xmit_params(struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
 struct m_tag *mtag;
 struct ieee80211_tx_params *tx;

 mtag = m_tag_alloc(MTAG_ABI_NET80211, NET80211_TAG_XMIT_PARAMS,
     sizeof(struct ieee80211_tx_params), M_NOWAIT);
 if (mtag == ((void*)0))
  return (0);

 tx = (struct ieee80211_tx_params *)(mtag+1);
 memcpy(&tx->params, params, sizeof(struct ieee80211_bpf_params));
 m_tag_prepend(m, mtag);
 return (1);
}
