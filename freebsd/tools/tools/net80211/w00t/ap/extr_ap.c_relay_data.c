
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char* mac; int seq; } ;
struct ieee80211_frame {char* i_fc; char* i_seq; char* i_addr1; char* i_addr3; char* i_addr2; } ;
typedef int seq ;
typedef int fc ;


 int IEEE80211_FC1_DIR_FROMDS ;
 int IEEE80211_FC1_DIR_TODS ;
 int IEEE80211_FC1_RETRY ;
 int enque (struct params*,struct ieee80211_frame*,int) ;
 int memcpy (char*,char*,int) ;
 int send_frame (struct params*,struct ieee80211_frame*,int) ;
 unsigned short seqfn (int ,int ) ;

void relay_data(struct params *p, struct ieee80211_frame *wh, int len)
{
 char seq[2];
 char fc[2];
 unsigned short *ps;


 memcpy(fc, wh->i_fc, 2);
 memcpy(seq, wh->i_seq, 2);


 wh->i_fc[1] &= ~(IEEE80211_FC1_DIR_TODS | IEEE80211_FC1_RETRY);
 wh->i_fc[1] |= IEEE80211_FC1_DIR_FROMDS;
 memcpy(wh->i_addr1, wh->i_addr3, sizeof(wh->i_addr1));
 memcpy(wh->i_addr3, wh->i_addr2, sizeof(wh->i_addr3));
 memcpy(wh->i_addr2, p->mac, sizeof(wh->i_addr2));
        ps = (unsigned short*)wh->i_seq;
        *ps = seqfn(p->seq, 0);

 send_frame(p, wh, len);
 enque(p, wh, len);


 memcpy(wh->i_fc, fc, sizeof(fc));
 memcpy(wh->i_addr2, wh->i_addr3, sizeof(wh->i_addr2));
 memcpy(wh->i_addr3, wh->i_addr1, sizeof(wh->i_addr2));
 memcpy(wh->i_addr1, p->mac, sizeof(wh->i_addr1));
 memcpy(wh->i_seq, seq, sizeof(seq));
}
