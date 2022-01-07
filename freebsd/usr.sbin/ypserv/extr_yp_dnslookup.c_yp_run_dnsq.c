
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct hostent {char* h_addr; int h_length; int h_addrtype; } ;
struct circleq_dnsentry {scalar_t__ type; struct circleq_dnsentry* name; int addrlen; int addrtype; scalar_t__ addr; } ;
typedef int socklen_t ;
typedef int buf ;
struct TYPE_2__ {int id; } ;
typedef TYPE_1__ HEADER ;


 int BY_DNS_ID ;
 int MAXPACKET ;
 int TAILQ_REMOVE (int *,struct circleq_dnsentry*,int ) ;
 scalar_t__ T_PTR ;
 struct hostent* __dns_getanswer (char*,int,struct circleq_dnsentry*,scalar_t__) ;
 int bzero (char*,int) ;
 scalar_t__ debug ;
 int errno ;
 int free (struct circleq_dnsentry*) ;
 int inet_ntoa (int ) ;
 int links ;
 int ntohs (int ) ;
 int parse (struct hostent*) ;
 int pending ;
 int qhead ;
 int recvfrom (int ,char*,int,int ,struct sockaddr*,int*) ;
 int resfd ;
 int strerror (int ) ;
 int yp_error (char*,...) ;
 struct circleq_dnsentry* yp_find_dnsqent (int ,int ) ;
 int yp_prune_dnsq () ;
 int yp_send_dns_reply (struct circleq_dnsentry*,int ) ;

void
yp_run_dnsq(void)
{
 register struct circleq_dnsentry *q;
 char buf[sizeof(HEADER) + MAXPACKET];
 struct sockaddr_in sin;
 socklen_t len;
 int rval;
 HEADER *hptr;
 struct hostent *hent;

 if (debug)
  yp_error("running dns queue");

 bzero(buf, sizeof(buf));

 len = sizeof(struct sockaddr_in);
 rval = recvfrom(resfd, buf, sizeof(buf), 0,
   (struct sockaddr *)&sin, &len);

 if (rval == -1) {
  yp_error("recvfrom failed: %s", strerror(errno));
  return;
 }
 hptr = (HEADER *)&buf;
 if (!pending ||
  (q = yp_find_dnsqent(ntohs(hptr->id), BY_DNS_ID)) == ((void*)0)) {

  return;
 }

 if (debug)
  yp_error("got dns reply from %s", inet_ntoa(sin.sin_addr));

 hent = __dns_getanswer(buf, rval, q->name, q->type);

 if (hent != ((void*)0)) {
  if (q->type == T_PTR) {
   hent->h_addr = (char *)q->addr;
   hent->h_addrtype = q->addrtype;
   hent->h_length = q->addrlen;
  }
 }


 yp_send_dns_reply(q, parse(hent));
 pending--;
 TAILQ_REMOVE(&qhead, q, links);
 free(q->name);
 free(q);


 yp_prune_dnsq();

 return;
}
