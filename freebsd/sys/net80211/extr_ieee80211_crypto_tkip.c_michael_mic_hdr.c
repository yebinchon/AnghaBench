
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ieee80211_qosframe {int* i_qos; } ;
struct ieee80211_frame_addr4 {int* i_fc; int i_addr4; int i_addr3; int i_addr1; int i_addr2; } ;
struct ieee80211_frame {int dummy; } ;


 int IEEE80211_ADDR_COPY (int*,int ) ;
 int IEEE80211_ADDR_LEN ;
 int IEEE80211_FC0_SUBTYPE_QOS ;


 int IEEE80211_FC1_DIR_MASK ;


 int IEEE80211_QOS_TID ;

__attribute__((used)) static void
michael_mic_hdr(const struct ieee80211_frame *wh0, uint8_t hdr[16])
{
 const struct ieee80211_frame_addr4 *wh =
  (const struct ieee80211_frame_addr4 *) wh0;

 switch (wh->i_fc[1] & IEEE80211_FC1_DIR_MASK) {
 case 129:
  IEEE80211_ADDR_COPY(hdr, wh->i_addr1);
  IEEE80211_ADDR_COPY(hdr + IEEE80211_ADDR_LEN, wh->i_addr2);
  break;
 case 128:
  IEEE80211_ADDR_COPY(hdr, wh->i_addr3);
  IEEE80211_ADDR_COPY(hdr + IEEE80211_ADDR_LEN, wh->i_addr2);
  break;
 case 130:
  IEEE80211_ADDR_COPY(hdr, wh->i_addr1);
  IEEE80211_ADDR_COPY(hdr + IEEE80211_ADDR_LEN, wh->i_addr3);
  break;
 case 131:
  IEEE80211_ADDR_COPY(hdr, wh->i_addr3);
  IEEE80211_ADDR_COPY(hdr + IEEE80211_ADDR_LEN, wh->i_addr4);
  break;
 }

 if (wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_QOS) {
  const struct ieee80211_qosframe *qwh =
   (const struct ieee80211_qosframe *) wh;
  hdr[12] = qwh->i_qos[0] & IEEE80211_QOS_TID;
 } else
  hdr[12] = 0;
 hdr[13] = hdr[14] = hdr[15] = 0;
}
