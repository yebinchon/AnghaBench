
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_frame {unsigned char* i_addr3; } ;
struct TYPE_2__ {char* ssid; unsigned char chan; char* bss; } ;


 int FOUND_VICTIM ;
 int IEEE80211_BEACON_CAPABILITY (unsigned char*) ;
 int IEEE80211_CAPINFO_PRIVACY ;
 int exit (int) ;
 int free (char*) ;
 int mac2str (char*) ;
 scalar_t__ malloc (int) ;
 scalar_t__ memcmp (unsigned char*,scalar_t__,int) ;
 int memcpy (char*,unsigned char*,int) ;
 int perror (char*) ;
 int set_chan (unsigned char) ;
 int state ;
 int time_print (char*,...) ;
 TYPE_1__ victim ;
 scalar_t__ victim_mac ;

int get_victim_ssid(struct ieee80211_frame* wh, int len) {
 unsigned char* ptr;
 int x;
 int gots = 0, gotc = 0;

 if (len <= sizeof(*wh)) {
  time_print("Warning: short packet in get_victim_ssid()\n");
  return 0;
 }

 ptr = (unsigned char*)wh + sizeof(*wh);
 len -= sizeof(*wh);


 if ( !(IEEE80211_BEACON_CAPABILITY(ptr) & IEEE80211_CAPINFO_PRIVACY)) {
  return 0;
 }


 if (victim_mac) {
  if (memcmp(wh->i_addr3, victim_mac, 6) != 0)
   return 0;
 }


 x = 8 + 2 + 2;
 if (len <= x) {
  time_print("Warning short.asdfasdf\n");
  return 0;
 }

 ptr += x;
 len -= x;


 while(len > 2) {
  int eid, elen;

  eid = *ptr;
  ptr++;
  elen = *ptr;
  ptr++;
  len -= 2;

  if (len < elen) {
   time_print("Warning short....\n");
   return 0;
  }


  if (eid == 0) {
   if (victim.ssid)
    free(victim.ssid);

   victim.ssid = (char*) malloc(elen + 1);
   if (!victim.ssid) {
    perror("malloc()");
    exit(1);
   }

   memcpy(victim.ssid, ptr, elen);
   victim.ssid[elen] = 0;
   gots = 1;

  }

  else if(eid == 3) {
   if( elen != 1) {
    time_print("Warning len of chan not 1\n");
    return 0;
   }

   victim.chan = *ptr;
   gotc = 1;
  }

  ptr += elen;
  len -= elen;
 }

 if (gots && gotc) {
  memcpy(victim.bss, wh->i_addr3, 6);
  set_chan(victim.chan);
  state = FOUND_VICTIM;
  time_print("Found SSID(%s) BSS=(%s) chan=%d\n",
         victim.ssid, mac2str(victim.bss), victim.chan);
  return 1;
 }
 return 0;
}
