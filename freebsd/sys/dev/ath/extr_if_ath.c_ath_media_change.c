
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ENETRESET ;
 int ieee80211_media_change (struct ifnet*) ;

__attribute__((used)) static int
ath_media_change(struct ifnet *ifp)
{
 int error = ieee80211_media_change(ifp);

 return (error == ENETRESET ? 0 : error);
}
