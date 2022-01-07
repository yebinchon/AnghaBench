
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int tap; int wep_len; int wep_key; int mac; } ;
struct ieee80211_frame {char* i_addr1; char* i_addr3; int* i_fc; char* i_addr2; } ;


 int IEEE80211_FC1_PROTECTED ;
 int err (int,char*) ;
 int exit (int) ;
 scalar_t__ memcmp (char*,int ,int) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,...) ;
 int relay_data (struct params*,struct ieee80211_frame*,int) ;
 int wep_decrypt (struct ieee80211_frame*,int,int ,int ) ;
 int write (int ,char*,int) ;

void read_real_data(struct params *p, struct ieee80211_frame *wh, int len)
{
 char dst[6];
 int rc;
 char *ptr = (char*) (wh+1);


 if (memcmp(wh->i_addr1, p->mac, 6) != 0)
  return;


 if (memcmp(wh->i_addr3, p->mac, 6) != 0)
  relay_data(p, wh, len);

 memcpy(dst, wh->i_addr3, 6);


 if (wh->i_fc[1] & IEEE80211_FC1_PROTECTED) {
  if (!p->wep_len) {
   printf("Got wep but i aint wep\n");
   return;
  }

  if (wep_decrypt(wh, len, p->wep_key, p->wep_len) == -1){
   printf("Can't decrypt\n");
   return;
  }

  ptr += 4;
  len -= 8;
 }


 ptr += 8 - 2;
 ptr -= 6;
 memcpy(ptr, wh->i_addr2, 6);
 ptr -= 6;
 memcpy(ptr, dst, 6);

 len -= sizeof(*wh);
 len -= 8;
 len += 14;


 rc = write(p->tap, ptr, len);
 if (rc == -1)
  err(1, "write()");
 if (rc != len) {
  printf("Wrote %d/%d\n", rc, len);
  exit(1);
 }
}
