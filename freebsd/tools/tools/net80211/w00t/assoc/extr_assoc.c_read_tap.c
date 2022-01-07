
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char* packet; int packet_len; char wep_iv; int wep_len; int wep_key; int tap; } ;
struct ieee80211_frame {char* i_addr3; int * i_fc; } ;
typedef int mac ;


 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC1_DIR_TODS ;
 int IEEE80211_FC1_PROTECTED ;
 int err (int,char*) ;
 int fill_basic (struct ieee80211_frame*,struct params*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int read (int ,char*,int) ;
 int wep_encrypt (struct ieee80211_frame*,int,int ,int ) ;

void read_tap(struct params *p)
{
 char *ptr;
 int len = sizeof(p->packet);
 int offset;
 char mac[6];
 struct ieee80211_frame *wh;

 ptr = p->packet;
 offset = sizeof(struct ieee80211_frame) + 8 - 14;
 if (p->wep_len)
  offset += 4;

 ptr += offset;
 len -= offset;


 memset(p->packet, 0, sizeof(p->packet));
 p->packet_len = read(p->tap, ptr, len);
 if (p->packet_len == -1)
  err(1, "read()");


 wh = (struct ieee80211_frame*) p->packet;
 memcpy(mac, ptr, sizeof(mac));
 fill_basic(wh, p);
 memcpy(wh->i_addr3, mac, sizeof(wh->i_addr3));
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
 wh->i_fc[1] |= IEEE80211_FC1_DIR_TODS;
 if (p->wep_len)
  wh->i_fc[1] |= IEEE80211_FC1_PROTECTED;


 ptr = (char*) (wh+1);
 if (p->wep_len)
  ptr += 4;
 *ptr++ = 0xAA;
 *ptr++ = 0xAA;
 *ptr++ = 0x03;
 *ptr++ = 0x00;
 *ptr++ = 0x00;
 *ptr++ = 0x00;


 p->packet_len += offset;


 if (p->wep_len) {
  ptr = (char*) (wh+1);
  memcpy(ptr, &p->wep_iv, 3);
  ptr[3] = 0;
  p->wep_iv++;

  wep_encrypt(wh, p->packet_len, p->wep_key, p->wep_len);
  p->packet_len += 4;
 }
}
