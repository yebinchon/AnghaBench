
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_rx_params {int params; } ;


 int MTAG_ABI_NET80211 ;
 int NET80211_TAG_RECV_PARAMS ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int memcpy (struct ieee80211_rx_stats*,int *,int) ;

int
ieee80211_get_rx_params(struct mbuf *m, struct ieee80211_rx_stats *rxs)
{
 struct m_tag *mtag;
 struct ieee80211_rx_params *rx;

 mtag = m_tag_locate(m, MTAG_ABI_NET80211, NET80211_TAG_RECV_PARAMS,
     ((void*)0));
 if (mtag == ((void*)0))
  return (-1);
 rx = (struct ieee80211_rx_params *)(mtag + 1);
 memcpy(rxs, &rx->params, sizeof(*rxs));
 return (0);
}
