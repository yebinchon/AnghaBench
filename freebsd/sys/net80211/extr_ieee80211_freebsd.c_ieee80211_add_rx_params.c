
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_rx_params {int params; } ;


 int MTAG_ABI_NET80211 ;
 int M_NOWAIT ;
 int NET80211_TAG_RECV_PARAMS ;
 struct m_tag* m_tag_alloc (int ,int ,int,int ) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int memcpy (int *,struct ieee80211_rx_stats const*,int) ;

int
ieee80211_add_rx_params(struct mbuf *m, const struct ieee80211_rx_stats *rxs)
{
 struct m_tag *mtag;
 struct ieee80211_rx_params *rx;

 mtag = m_tag_alloc(MTAG_ABI_NET80211, NET80211_TAG_RECV_PARAMS,
     sizeof(struct ieee80211_rx_stats), M_NOWAIT);
 if (mtag == ((void*)0))
  return (0);

 rx = (struct ieee80211_rx_params *)(mtag + 1);
 memcpy(&rx->params, rxs, sizeof(*rxs));
 m_tag_prepend(m, mtag);
 return (1);
}
