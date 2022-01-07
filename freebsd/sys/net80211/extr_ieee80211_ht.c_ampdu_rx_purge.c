
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_rx_ampdu {int rxa_wnd; scalar_t__ rxa_qframes; scalar_t__ rxa_qbytes; } ;


 int KASSERT (int,char*) ;
 int ampdu_rx_purge_slot (struct ieee80211_rx_ampdu*,int) ;

__attribute__((used)) static void
ampdu_rx_purge(struct ieee80211_rx_ampdu *rap)
{
 int i;

 for (i = 0; i < rap->rxa_wnd; i++) {
  ampdu_rx_purge_slot(rap, i);
  if (rap->rxa_qframes == 0)
   break;
 }
 KASSERT(rap->rxa_qbytes == 0 && rap->rxa_qframes == 0,
     ("lost %u data, %u frames on ampdu rx q",
     rap->rxa_qbytes, rap->rxa_qframes));
}
