
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef long uLong ;
struct queue {int len; int id; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct params {char* ap; char* mac; char* rtr; char* iv; char* prga; int packet_len; scalar_t__ data_try; TYPE_4__ dst; TYPE_2__ src; scalar_t__ frag; int seq; scalar_t__ packet; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct ip {int ip_v; int ip_hl; int ip_ttl; int ip_sum; TYPE_3__ ip_dst; TYPE_1__ ip_src; scalar_t__ ip_p; void* ip_id; void* ip_len; } ;
struct ieee80211_frame {int* i_dur; char* i_addr1; char* i_addr2; char* i_addr3; scalar_t__ i_seq; int * i_fc; } ;


 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC1_DIR_TODS ;
 int IEEE80211_FC1_MORE_FRAG ;
 int IEEE80211_FC1_PROTECTED ;
 char* Z_NULL ;
 long crc32 (long,char*,int) ;
 void* htons (int) ;
 int in_cksum (unsigned short*,int) ;
 int memcpy (char*,char*,int) ;
 int memset (scalar_t__,int ,int) ;
 int send_packet (struct params*) ;
 short seqfn (int ,int ) ;

void send_header(struct params *p, struct queue *q)
{
 struct ieee80211_frame *wh;
 short *pseq;
 char *ptr;
 struct ip *ih;
 int len, i;
 uLong crc = crc32(0L, Z_NULL, 0);
 uLong *pcrc;


 memset(p->packet, 0, sizeof(p->packet));
 wh = (struct ieee80211_frame *) p->packet;
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
 wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_DATA;
 wh->i_fc[1] |= IEEE80211_FC1_DIR_TODS;
 wh->i_fc[1] |= IEEE80211_FC1_PROTECTED;
 wh->i_fc[1] |= IEEE80211_FC1_MORE_FRAG;

 wh->i_dur[0] = 0x69;

 memcpy(wh->i_addr1, p->ap, 6);
 memcpy(wh->i_addr2, p->mac, 6);
 memcpy(wh->i_addr3, p->rtr, 6);

 pseq = (short*) wh->i_seq;
 p->frag = 0;
 p->seq++;
 *pseq = seqfn(p->seq, p->frag++);


 ptr = (char*) (wh+1);
 memcpy(ptr, p->iv, 3);
 ptr += 4;


 memcpy(ptr, "\xAA\xAA\x03\x00\x00\x00\x08\x00", 8);


 ih = (struct ip*) (ptr+8);
 ih->ip_v = 4;
 ih->ip_hl = 5;
 len = q->len - sizeof(*wh) - 4 - 4 + 20;
 ih->ip_len = htons(len);
 ih->ip_id = htons(q->id);
 ih->ip_ttl = 69;
 ih->ip_p = 0;
 ih->ip_src.s_addr = p->src.s_addr;
 ih->ip_dst.s_addr = p->dst.s_addr;
 ih->ip_sum = in_cksum((unsigned short*)ih, 20);


 len = 8 + 20;
 crc = crc32(crc, ptr, len);
 pcrc = (uLong*) (ptr+len);
 *pcrc = crc;


 for (i = 0; i < len + 4; i++)
  ptr[i] ^= p->prga[i];

 p->packet_len = sizeof(*wh) + 4 + len + 4;
 p->data_try = 0;
 send_packet(p);
}
