
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uLong ;
struct params {char* packet; char* ap; char* mac; char* iv; int prga_len; char* prga; int packet_len; int state; scalar_t__ data_try; int seq; int tap; } ;
struct ieee80211_frame {int* i_dur; char* i_addr1; char* i_addr2; char* i_addr3; scalar_t__ i_seq; int * i_fc; } ;
typedef int dst ;


 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC1_DIR_TODS ;
 int IEEE80211_FC1_PROTECTED ;
 int S_WAIT_ACK ;
 char* Z_NULL ;
 int assert (int) ;
 long crc32 (long,char*,int) ;
 int err (int,char*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int read (int ,char*,int) ;
 int send_packet (struct params*) ;
 short seqfn (int ,int ) ;

void read_tap(struct params *p)
{
 int offset;
 char *ptr;
 struct ieee80211_frame *wh;
 int rc;
 char dst[6];
 short *seq;
 uLong *pcrc;
 uLong crc = crc32(0L, Z_NULL, 0);

 memset(p->packet, 0, sizeof(p->packet));
 offset = sizeof(*wh) + 4 + 8 - 14;
 rc = sizeof(p->packet) - offset;
 ptr = &p->packet[offset];

 rc = read(p->tap, ptr, rc);
 if (rc == -1)
  err(1, "read()");

 memcpy(dst, ptr, sizeof(dst));
 wh = (struct ieee80211_frame*) p->packet;
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
 wh->i_fc[0] |= IEEE80211_FC0_SUBTYPE_DATA;
 wh->i_fc[1] |= IEEE80211_FC1_PROTECTED;
 wh->i_fc[1] |= IEEE80211_FC1_DIR_TODS;

 wh->i_dur[0] = 0x69;

 memcpy(wh->i_addr1, p->ap, 6);
 memcpy(wh->i_addr2, p->mac, 6);
 memcpy(wh->i_addr3, dst, 6);

 seq = (short*) wh->i_seq;
 *seq = seqfn(p->seq++, 0);


 ptr = (char*) (wh+1);
 memcpy(ptr, p->iv, 3);
 ptr += 3;
 *ptr++ = 0;
 memcpy(ptr, "\xAA\xAA\x03\x00\x00\x00", 6);
 rc -= 14;
 rc += 8;

 crc = crc32(crc, ptr, rc);
 pcrc = (uLong*) (ptr+rc);
 *pcrc = crc;

 rc += 4;

 assert(p->prga_len >= rc);


 for (offset = 0; offset < rc; offset++)
  ptr[offset] ^= p->prga[offset];

 p->packet_len = sizeof(*wh) + 4 + rc;
 p->data_try = 0;
 send_packet(p);
 p->state = S_WAIT_ACK;
}
