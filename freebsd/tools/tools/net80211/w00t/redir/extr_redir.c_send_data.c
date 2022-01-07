
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int len; scalar_t__ wh; } ;
struct params {char* ap; char* mac; char* rtr; int packet_len; scalar_t__ data_try; int frag; int seq; scalar_t__ packet; struct queue* q; } ;
struct ieee80211_frame {int* i_dur; char* i_addr1; char* i_addr2; char* i_addr3; scalar_t__ i_seq; int * i_fc; } ;


 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC1_DIR_TODS ;
 int IEEE80211_FC1_PROTECTED ;
 int assert (struct queue*) ;
 int memcpy (char*,char*,int) ;
 int memset (scalar_t__,int ,int) ;
 int send_packet (struct params*) ;
 short seqfn (int ,int ) ;

void send_data(struct params *p)
{
 struct ieee80211_frame *wh;
 short *seq;
 struct queue *q = p->q;
 char *dst, *src;
 int len;

 assert(q);


 memset(p->packet, 0, sizeof(p->packet));
 wh = (struct ieee80211_frame*) p->packet;
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
 wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_DATA;
 wh->i_fc[1] |= IEEE80211_FC1_DIR_TODS;
 wh->i_fc[1] |= IEEE80211_FC1_PROTECTED;

 wh->i_dur[0] = 0x69;

 memcpy(wh->i_addr1, p->ap, 6);
 memcpy(wh->i_addr2, p->mac, 6);
 memcpy(wh->i_addr3, p->rtr, 6);

 seq = (short*) wh->i_seq;
 *seq = seqfn(p->seq, p->frag++);


 dst = (char*) (wh+1);
 src = (char*) (q->wh+1);
 len = q->len - sizeof(*wh);
 memcpy(dst, src, len);

 p->packet_len = sizeof(*wh) + len;
 p->data_try = 0;
 send_packet(p);
}
