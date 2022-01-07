
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int seq_rx; scalar_t__ state; int tap; int wep_len; int wep_key; int ap; int tx; int mac; } ;
struct ieee80211_frame {char* i_addr2; int* i_fc; char* i_addr1; char* i_addr3; } ;


 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_SUBTYPE_MASK ;
 int IEEE80211_FC0_SUBTYPE_SHIFT ;
 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC0_TYPE_MASK ;
 int IEEE80211_FC1_DIR_FROMDS ;
 int IEEE80211_FC1_PROTECTED ;
 int IEEE80211_FC1_RETRY ;
 scalar_t__ S_ASSOCIATED ;
 int ack (struct params*,struct ieee80211_frame*) ;
 int err (int,char*) ;
 int exit (int) ;
 scalar_t__ for_me (struct ieee80211_frame*,int ) ;
 int mac2str (char*,char*) ;
 scalar_t__ memcmp (char*,int ,int) ;
 int memcpy (char*,char*,int) ;
 int printf (char*,...) ;
 int send_ack (int ,char*) ;
 void* seqno (struct ieee80211_frame*) ;
 int wep_decrypt (struct ieee80211_frame*,int,int ,int ) ;
 int write (int ,char*,int) ;

void generic_process(struct ieee80211_frame *wh, struct params *p, int len)
{
 int type, stype;
 int dup = 0;
 if (memcmp(wh->i_addr2, p->mac, 6) == 0) {
  return;
 }

 type = wh->i_fc[0] & IEEE80211_FC0_TYPE_MASK;
 stype = wh->i_fc[0] & IEEE80211_FC0_SUBTYPE_MASK;

 if (for_me(wh, p->mac) && type == IEEE80211_FC0_TYPE_DATA) {

  if (p->seq_rx == -1)
   p->seq_rx = seqno(wh);
  else {
   int s = seqno(wh);

   if (s > p->seq_rx) {

    if (p->seq_rx + 1 == s) {



     p->seq_rx = s;
    }
    else {




     p->seq_rx = s;
    }
   } else {
    if (p->seq_rx - s > 1000) {





     p->seq_rx = 0;
    }
    else {
     dup = 1;




    }
   }
  }
 }
 if (type == IEEE80211_FC0_TYPE_DATA && !dup) {
  char *ptr;
  char src[6], dst[6];
  int rc;

  if (wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS) {
   if (memcmp(wh->i_addr2, p->ap, 6) != 0)
    return;
  } else {
   if (memcmp(wh->i_addr1, p->ap, 6) != 0)
    return;
  }


  if (p->state < S_ASSOCIATED) {
   printf("Got data when not associated!\n");
   return;
  }
  if (stype != IEEE80211_FC0_SUBTYPE_DATA) {
   printf("Got weird data frame stype=%d\n",
          stype >> IEEE80211_FC0_SUBTYPE_SHIFT);
   return;
  }

  if (wh->i_fc[1] & IEEE80211_FC1_DIR_FROMDS) {
   memcpy(src, wh->i_addr3, 6);
   memcpy(dst, wh->i_addr1, 6);
  } else {
   memcpy(src, wh->i_addr2, 6);
   memcpy(dst, wh->i_addr3, 6);
  }

  ptr = (char*) (wh + 1);

  if (wh->i_fc[1] & IEEE80211_FC1_PROTECTED) {
   if (!p->wep_len) {
    char srca[3*6];
    char dsta[3*6];

    mac2str(srca, src);
    mac2str(dsta, dst);
    printf("Got wep but i aint wep %s->%s %d\n",
           srca, dsta, len-sizeof(*wh)-8);
    return;
   }

   if (wep_decrypt(wh, len, p->wep_key, p->wep_len) == -1){
    char srca[3*6];
    char dsta[3*6];

    mac2str(srca, src);
    mac2str(dsta, dst);
    printf("Can't decrypt %s->%s %d\n", srca, dsta,
           len-sizeof(*wh)-8);
    return;
   }

   ptr += 4;
   len -= 8;
  }


  ptr += 8 - 2;
  ptr -= 6;
  memcpy(ptr, src, 6);
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
}
