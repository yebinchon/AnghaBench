
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ieee80211_tx_params {int params; } ;
struct ieee80211_bpf_params {int dummy; } ;


 int MTAG_ABI_NET80211 ;
 int NET80211_TAG_XMIT_PARAMS ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int memcpy (struct ieee80211_bpf_params*,int *,int) ;

int
ieee80211_get_xmit_params(struct mbuf *m,
    struct ieee80211_bpf_params *params)
{
 struct m_tag *mtag;
 struct ieee80211_tx_params *tx;

 mtag = m_tag_locate(m, MTAG_ABI_NET80211, NET80211_TAG_XMIT_PARAMS,
     ((void*)0));
 if (mtag == ((void*)0))
  return (-1);
 tx = (struct ieee80211_tx_params *)(mtag + 1);
 memcpy(params, &tx->params, sizeof(struct ieee80211_bpf_params));
 return (0);
}
