
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {char wep_iv; int wep_len; int wep_key; int tap; } ;
struct ieee80211_frame {char* i_addr3; char* i_addr1; int * i_fc; } ;
typedef int src ;
typedef int dst ;
typedef int buf ;


 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC1_DIR_FROMDS ;
 int IEEE80211_FC1_PROTECTED ;
 int err (int,char*) ;
 int fill_basic (struct ieee80211_frame*,struct params*) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int read (int ,char*,int) ;
 int send_frame (struct params*,struct ieee80211_frame*,int) ;
 int wep_encrypt (struct ieee80211_frame*,int,int ,int ) ;

void read_tap(struct params *p)
{
 char buf[4096];
 char *ptr;
 int len = sizeof(buf);
 int offset;
 char src[6], dst[6];
 struct ieee80211_frame *wh;
 int rd;

 ptr = buf;
 offset = sizeof(struct ieee80211_frame) + 8 - 14;
 if (p->wep_len)
  offset += 4;

 ptr += offset;
 len -= offset;


 memset(buf, 0, sizeof(buf));
 rd = read(p->tap, ptr, len);
 if (rd == -1)
  err(1, "read()");


 wh = (struct ieee80211_frame*) buf;
 memcpy(dst, ptr, sizeof(dst));
 memcpy(src, ptr+6, sizeof(src));
 fill_basic(wh, p);
 memcpy(wh->i_addr3, src, sizeof(wh->i_addr3));
 memcpy(wh->i_addr1, dst, sizeof(wh->i_addr1));
 wh->i_fc[0] |= IEEE80211_FC0_TYPE_DATA;
 wh->i_fc[1] |= IEEE80211_FC1_DIR_FROMDS;
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


 rd += offset;


 if (p->wep_len) {
  ptr = (char*) (wh+1);
  memcpy(ptr, &p->wep_iv, 3);
  ptr[3] = 0;
  p->wep_iv++;

  wep_encrypt(wh, rd, p->wep_key, p->wep_len);
  rd += 4;
 }

 send_frame(p, wh, rd);
}
