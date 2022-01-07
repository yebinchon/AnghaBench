
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int dummy; } ;
struct ieee80211_frame {int* i_fc; int i_addr2; } ;
struct client {int seq; int mac; } ;


 int IEEE80211_FC0_SUBTYPE_DATA ;
 int IEEE80211_FC0_TYPE_DATA ;
 int IEEE80211_FC1_RETRY ;
 struct client* client_find (struct params*,int ) ;
 int client_insert (struct params*,struct client*) ;
 int err (int,char*) ;
 int frame_type (struct ieee80211_frame*,int ,int ) ;
 int mac2str (char*,int ) ;
 struct client* malloc (int) ;
 int memcpy (int ,int ,int) ;
 int memset (struct client*,int ,int) ;
 int printf (char*,...) ;
 int seqno (struct ieee80211_frame*) ;

int duplicate(struct params *p, struct ieee80211_frame *wh, int rc)
{
 struct client *c;
 int s;

 if (!frame_type(wh, IEEE80211_FC0_TYPE_DATA,
   IEEE80211_FC0_SUBTYPE_DATA))
  return 0;

 s = seqno(wh);

 c = client_find(p, wh->i_addr2);
 if (!c) {
  c = malloc(sizeof(*c));
  if (!c)
   err(1, "malloc()");

  memset(c, 0, sizeof(*c));
  memcpy(c->mac, wh->i_addr2, 6);

  c->seq = s-1;
  client_insert(p, c);
 }

 if (wh->i_fc[1] & IEEE80211_FC1_RETRY) {
  if ( (s <= c->seq) && ((c->seq - s ) < 5)) {




   return 1;
  }
 }
 c->seq = s;
 return 0;
}
