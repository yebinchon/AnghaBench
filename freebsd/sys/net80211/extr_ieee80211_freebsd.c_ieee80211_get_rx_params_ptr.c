
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_rx_params {struct ieee80211_rx_stats const params; } ;


 int MTAG_ABI_NET80211 ;
 int NET80211_TAG_RECV_PARAMS ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;

const struct ieee80211_rx_stats *
ieee80211_get_rx_params_ptr(struct mbuf *m)
{
 struct m_tag *mtag;
 struct ieee80211_rx_params *rx;

 mtag = m_tag_locate(m, MTAG_ABI_NET80211, NET80211_TAG_RECV_PARAMS,
     ((void*)0));
 if (mtag == ((void*)0))
  return (((void*)0));
 rx = (struct ieee80211_rx_params *)(mtag + 1);
 return (&rx->params);
}
