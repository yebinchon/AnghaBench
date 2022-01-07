
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ieee80211_toa_params {int dummy; } ;


 int MTAG_ABI_NET80211 ;
 int NET80211_TAG_TOA_PARAMS ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int memcpy (struct ieee80211_toa_params*,struct ieee80211_toa_params*,int) ;

int
ieee80211_get_toa_params(struct mbuf *m, struct ieee80211_toa_params *p)
{
 struct m_tag *mtag;
 struct ieee80211_toa_params *rp;

 mtag = m_tag_locate(m, MTAG_ABI_NET80211, NET80211_TAG_TOA_PARAMS,
     ((void*)0));
 if (mtag == ((void*)0))
  return (0);
 rp = (struct ieee80211_toa_params *)(mtag + 1);
 if (p != ((void*)0))
  memcpy(p, rp, sizeof(*p));
 return (1);
}
