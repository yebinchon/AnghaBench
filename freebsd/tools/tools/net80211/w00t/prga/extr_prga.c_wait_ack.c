
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct params {int data_try; scalar_t__ frag; int state; struct timeval last; int mac; scalar_t__ rx; } ;
struct ieee80211_frame {int i_addr1; } ;
typedef int fd_set ;
typedef int buf ;


 int FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int IEEE80211_FC0_SUBTYPE_ACK ;
 int IEEE80211_FC0_TYPE_CTL ;
 int S_SEND_FRAG ;
 int S_START ;
 int S_WAIT_RELAY ;
 int elapsed (struct timeval*,struct timeval*) ;
 int err (int,char*) ;
 int frame_type (struct ieee80211_frame*,int ,int ) ;
 struct ieee80211_frame* get_wifi (char*,int*) ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int printf (char*) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int send_packet (struct params*) ;
 int sniff (scalar_t__,char*,int) ;

void wait_ack(struct params *p)
{
 struct timeval now;
 int el;
 int tout = 10*1000;
 fd_set fds;
 int rc;
 char buf[4096];
 struct ieee80211_frame *wh;

 if (gettimeofday(&now, ((void*)0)) == -1)
  err(1, "gettimeofday()");


 el = elapsed(&p->last, &now);
 if (el >= tout) {
  if (p->data_try >= 3) {



   p->state = S_START;
   return;
  }



  send_packet(p);
  el = 0;
 }

 el = tout - el;
 now.tv_sec = el/1000/1000;
 now.tv_usec = el - now.tv_sec*1000*1000;

 FD_ZERO(&fds);
 FD_SET(p->rx, &fds);
 if (select(p->rx+1, &fds, ((void*)0), ((void*)0), &now) == -1)
  err(1, "select()");

 if (!FD_ISSET(p->rx, &fds))
  return;


        rc = sniff(p->rx, buf, sizeof(buf));
        if (rc == -1)
                err(1, "sniff()");

        wh = get_wifi(buf, &rc);
        if (!wh)
                return;

 if (!frame_type(wh, IEEE80211_FC0_TYPE_CTL, IEEE80211_FC0_SUBTYPE_ACK))
  return;

 if (memcmp(p->mac, wh->i_addr1, 6) != 0)
  return;


 if (p->frag == 0) {
  p->state = S_WAIT_RELAY;
  if (gettimeofday(&p->last, ((void*)0)) == -1)
   err(1, "gettimeofday()");
 }
 else
  p->state = S_SEND_FRAG;
}
