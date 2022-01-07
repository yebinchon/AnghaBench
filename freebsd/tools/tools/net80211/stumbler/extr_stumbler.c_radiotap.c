
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct node_info {int signal; } ;
struct ieee80211_radiotap_header {int it_len; int it_present; } ;
struct ieee80211_frame {int dummy; } ;
typedef int int8_t ;
 int abort () ;
 int assert (int) ;
 int get_packet_info (struct ieee80211_frame*,char*,int,struct node_info*) ;
 int mvprintw (int,int,char*,int) ;
 int update_node (struct node_info*) ;

void radiotap(unsigned char* data, int rd) {
 struct ieee80211_radiotap_header* rth;
 struct ieee80211_frame* wh;
 char* body;
 struct node_info node;
 int8_t signal_dbm, noise_dbm;
 uint8_t signal_db, noise_db;
 int dbm = 0;
 int signal = 0;
 int i;

 rd -= 4;


 rth = (struct ieee80211_radiotap_header*) data;


 wh = (struct ieee80211_frame*)
      ((char*)rth + rth->it_len);
        rd -= rth->it_len;

 assert (rd >= 0);


 body = (char*) wh + sizeof(*wh);
 rd -= sizeof(*wh);

 if (!get_packet_info(wh, body, rd, &node))
  return;


 body = (char*) rth + sizeof(*rth);
 signal_dbm = noise_dbm = signal_db = noise_db = 0;

 for (i = 128; i <= 132; i++) {
  if (!(rth->it_present & (1 << i)))
   continue;

  switch (i) {
  case 128:
   body += sizeof(uint64_t);
   break;

  case 130:
  case 129:
   body += sizeof(uint8_t);
   break;

  case 137:
   body += sizeof(uint16_t)*2;
   break;

  case 131:
   body += sizeof(uint16_t);
   break;

  case 135:
   signal_dbm = *body;
   body++;
   dbm = 1;
   break;

  case 136:
   noise_dbm = *body;
   body++;
   break;

  case 133:
   signal_db = *((unsigned char*)body);
   body++;
   break;

  case 134:
   noise_db = *((unsigned char*)body);
   body++;
   break;

  case 132:
   abort();
   break;
  }
 }
 if (dbm) {
  signal = signal_dbm - noise_dbm;
 }
 else {
  signal = signal_db - noise_db;
 }
 if (signal < 0)
  signal = 0;

 node.signal = signal;





 assert (node.signal <= 100 && node.signal >= 0);


 update_node(&node);
}
