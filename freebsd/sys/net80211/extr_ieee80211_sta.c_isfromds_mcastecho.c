
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211vap {scalar_t__ iv_opmode; int iv_myaddr; } ;
struct ieee80211_frame {int i_addr3; int i_addr1; } ;


 int IEEE80211_ADDR_EQ (int ,int ) ;
 int IEEE80211_IS_MULTICAST (int ) ;
 scalar_t__ IEEE80211_M_STA ;
 int KASSERT (int,char*) ;

__attribute__((used)) static __inline int
isfromds_mcastecho(struct ieee80211vap *vap, const struct ieee80211_frame *wh)
{
 KASSERT(vap->iv_opmode == IEEE80211_M_STA, ("wrong mode"));

 if (!IEEE80211_IS_MULTICAST(wh->i_addr1))
  return 0;
 return IEEE80211_ADDR_EQ(wh->i_addr3, vap->iv_myaddr);
}
