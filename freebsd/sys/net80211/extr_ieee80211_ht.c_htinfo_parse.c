
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ieee80211_node {void* ni_htstbc; void* ni_htopmode; void* ni_ht2ndchan; int ni_htctlchan; } ;
struct ieee80211_ie_htinfo {int hi_byte45; int hi_byte2; int hi_byte1; int hi_ctrlchannel; } ;


 int IEEE80211_HTINFO_2NDCHAN ;
 int IEEE80211_HTINFO_BASIC_STBCMCS ;
 int IEEE80211_HTINFO_OPMODE ;
 void* SM (int ,int ) ;
 int le16dec (int *) ;

__attribute__((used)) static void
htinfo_parse(struct ieee80211_node *ni,
 const struct ieee80211_ie_htinfo *htinfo)
{
 uint16_t w;

 ni->ni_htctlchan = htinfo->hi_ctrlchannel;
 ni->ni_ht2ndchan = SM(htinfo->hi_byte1, IEEE80211_HTINFO_2NDCHAN);
 w = le16dec(&htinfo->hi_byte2);
 ni->ni_htopmode = SM(w, IEEE80211_HTINFO_OPMODE);
 w = le16dec(&htinfo->hi_byte45);
 ni->ni_htstbc = SM(w, IEEE80211_HTINFO_BASIC_STBCMCS);
}
