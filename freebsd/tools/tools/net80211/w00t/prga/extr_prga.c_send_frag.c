
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uLong ;
struct params {int prga_len; int data_ptr; int data; int data_len; int ap; int mac; int seq; int frag; int iv; char* prga; int packet_len; int state; scalar_t__ packet; } ;
struct ieee80211_frame {int* i_dur; char* i_addr1; char* i_addr2; scalar_t__ i_seq; scalar_t__ i_addr3; int * i_fc; } ;


 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC1_DIR_TODS ;
 int IEEE80211_FC1_MORE_FRAG ;
 int IEEE80211_FC1_PROTECTED ;
 int S_WAIT_ACK ;
 char* Z_NULL ;
 long crc32 (long,char*,int) ;
 int memcpy (char*,int,int) ;
 int memset (scalar_t__,int,int) ;
 int printf (char*,char*,int,int,int) ;
 int send_packet (struct params*) ;
 short seqfn (int,int) ;

void send_frag(struct params *p)
{
 struct ieee80211_frame *wh;
 int dlen, rem;
 int last = 0;
 short *seqp;
 char *ptr;
 uLong *pcrc;
 uLong crc = crc32(0L, Z_NULL, 0);
 int i;

 memset(p->packet, 0, sizeof(p->packet));
 wh = (struct ieee80211_frame*) p->packet;


 dlen = p->prga_len - 4;
 rem = p->data_ptr - p->data;
 rem = p->data_len - rem;

 if (rem <= dlen) {
  dlen = rem;
  last = 1;
 }


 wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
 wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_DATA;
 wh->i_fc[1] |= IEEE80211_FC1_PROTECTED;
 wh->i_fc[1] |= IEEE80211_FC1_DIR_TODS;
 if (!last)
  wh->i_fc[1] |= IEEE80211_FC1_MORE_FRAG;

 wh->i_dur[0] = 0x69;
 wh->i_dur[1] = 0x00;

 memcpy(wh->i_addr1, p->ap, 6);
 memcpy(wh->i_addr2, p->mac, 6);
 memset(wh->i_addr3, 0xff, 6);

 seqp = (short*) wh->i_seq;
 *seqp = seqfn(p->seq, p->frag);
 p->frag++;


 ptr = (char*) (wh+1);
 memcpy(ptr, p->iv, 3);
 ptr += 4;
 memcpy(ptr, p->data_ptr, dlen);


 crc = crc32(crc, ptr, dlen);
 pcrc = (uLong*) (ptr+dlen);
 *pcrc = crc;


 for (i = 0; i < dlen+4; i++)
  ptr[i] = ptr[i] ^ p->prga[i];


 p->packet_len = sizeof(*wh) + 4 + dlen + 4;
 p->data_ptr += dlen;




 if (last) {
  p->data_ptr = p->data;
  p->frag = 0;
  p->seq++;
 }


 send_packet(p);
 p->state = S_WAIT_ACK;
}
