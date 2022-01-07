
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_frame {int* i_fc; int i_addr2; int i_addr1; scalar_t__ i_seq; } ;
struct TYPE_2__ {int bss; } ;


 scalar_t__ FIND_VICTIM ;
 scalar_t__ FOUND_VICTIM ;
 int IEEE80211_FC0_SUBTYPE_BEACON ;
 int IEEE80211_FC0_SUBTYPE_MASK ;
 int IEEE80211_FC0_SUBTYPE_PROBE_RESP ;
 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_MASK ;
 int IEEE80211_FC0_TYPE_MGT ;
 int IEEE80211_FC1_DIR_FROMDS ;
 int IEEE80211_FC1_DIR_TODS ;
 int IEEE80211_FC1_RETRY ;
 unsigned short IEEE80211_SEQ_SEQ_MASK ;
 unsigned short IEEE80211_SEQ_SEQ_SHIFT ;
 int exit (int) ;
 scalar_t__ get_victim_ssid (struct ieee80211_frame*,int) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int mymac ;
 int send_ack (int) ;
 scalar_t__ state ;
 int stuff_for_net (struct ieee80211_frame*,int) ;
 int stuff_for_us (struct ieee80211_frame*,int) ;
 int time_print (char*,int) ;
 TYPE_1__ victim ;

void anal(unsigned char* buf, int rd, int tx) {
 struct ieee80211_frame* wh = (struct ieee80211_frame *) buf;
 int type,stype;
 static int lastseq = -1;
 int seq;
 unsigned short *seqptr;
 int for_us = 0;

 if (rd < 1) {
  time_print("rd=%d\n", rd);
  exit(1);
 }

 type = wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK;
 stype = wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK;


 if (state >= FOUND_VICTIM) {

  if (memcmp(wh->i_addr1, mymac, 6) == 0) {
   for_us = 1;
   if (type != IEEE80211_FC0_TYPE_CTL)
    send_ack(tx);
  }
 }


 seqptr = (unsigned short*) wh->i_seq;
 seq = (*seqptr & IEEE80211_SEQ_SEQ_MASK) >> IEEE80211_SEQ_SEQ_SHIFT;
 if (seq == lastseq && (wh->i_fc[1] & IEEE80211_FC1_RETRY) &&
     type != IEEE80211_FC0_TYPE_CTL) {

  return;
 }
 lastseq = seq;


 if (type == IEEE80211_FC0_TYPE_MGT) {
  if(state == FIND_VICTIM) {
   if (stype == IEEE80211_FC0_SUBTYPE_BEACON ||
       stype == IEEE80211_FC0_SUBTYPE_PROBE_RESP) {

        if (get_victim_ssid(wh, rd)) {
         return;
    }
   }

  }
 }

 if (state >= FOUND_VICTIM) {

  if (for_us) {
   stuff_for_us(wh, rd);
  }


  if ( ((wh->i_fc[1] & IEEE80211_FC1_DIR_TODS) &&
     (memcmp(victim.bss, wh->i_addr1, 6) == 0)) ||

     ((wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS) &&
     (memcmp(victim.bss, wh->i_addr2, 6) == 0))
      ) {
   stuff_for_net(wh, rd);
  }
 }
}
