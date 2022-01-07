
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int vflag; int family; int proto; scalar_t__ state; int stack; struct addr* laddr; int pcb; struct sock* next; struct addr* faddr; int protoname; } ;
struct TYPE_2__ {int ss_len; } ;
struct addr {struct addr* next; int state; int encaps_port; TYPE_1__ address; } ;
typedef int kvaddr_t ;





 int HASHSIZE ;
 int INP_IPV4 ;
 int INP_IPV6 ;


 scalar_t__ SCTP_BOUND ;
 scalar_t__ SCTP_CLOSED ;
 scalar_t__ SCTP_LISTEN ;
 int TCP_FUNCTION_NAME_LEN_MAX ;
 scalar_t__ TCP_NSTATES ;
 int abort () ;
 int errx (int,char*,void*,void*) ;
 int ntohs (int ) ;
 scalar_t__ opt_S ;
 scalar_t__ opt_U ;
 scalar_t__ opt_s ;
 int opt_w ;
 int printaddr (TYPE_1__*) ;
 int sctp_conn_state (scalar_t__) ;
 int sctp_path_state (int ) ;
 struct sock** sockhash ;
 int * tcpstates ;
 scalar_t__ xprintf (char*,...) ;

__attribute__((used)) static void
displaysock(struct sock *s, int pos)
{
 kvaddr_t p;
 int hash, first, offset;
 struct addr *laddr, *faddr;
 struct sock *s_tmp;

 while (pos < 29)
  pos += xprintf(" ");
 pos += xprintf("%s", s->protoname);
 if (s->vflag & INP_IPV4)
  pos += xprintf("4");
 if (s->vflag & INP_IPV6)
  pos += xprintf("6");
 if (s->vflag & (INP_IPV4 | INP_IPV6))
  pos += xprintf(" ");
 laddr = s->laddr;
 faddr = s->faddr;
 first = 1;
 while (laddr != ((void*)0) || faddr != ((void*)0)) {
  offset = 36;
  while (pos < offset)
   pos += xprintf(" ");
  switch (s->family) {
  case 132:
  case 131:
   if (laddr != ((void*)0)) {
    pos += printaddr(&laddr->address);
    if (s->family == 131 && pos >= 58)
     pos += xprintf(" ");
   }
   offset += opt_w ? 46 : 22;
   while (pos < offset)
    pos += xprintf(" ");
   if (faddr != ((void*)0))
    pos += printaddr(&faddr->address);
   offset += opt_w ? 46 : 22;
   break;
  case 130:
   if ((laddr == ((void*)0)) || (faddr == ((void*)0)))
    errx(1, "laddr = %p or faddr = %p is NULL",
        (void *)laddr, (void *)faddr);

   if (laddr->address.ss_len > 0) {
    pos += printaddr(&laddr->address);
    break;
   }

   p = *(kvaddr_t*)&(faddr->address);
   if (p == 0) {
    pos += xprintf("(not connected)");
    offset += opt_w ? 92 : 44;
    break;
   }
   pos += xprintf("-> ");
   for (hash = 0; hash < HASHSIZE; ++hash) {
    for (s_tmp = sockhash[hash];
        s_tmp != ((void*)0);
        s_tmp = s_tmp->next)
     if (s_tmp->pcb == p)
      break;
    if (s_tmp != ((void*)0))
     break;
   }
   if (s_tmp == ((void*)0) || s_tmp->laddr == ((void*)0) ||
       s_tmp->laddr->address.ss_len == 0)
    pos += xprintf("??");
   else
    pos += printaddr(&s_tmp->laddr->address);
   offset += opt_w ? 92 : 44;
   break;
  default:
   abort();
  }
  if (opt_U) {
   if (faddr != ((void*)0) &&
       s->proto == 129 &&
       s->state != SCTP_CLOSED &&
       s->state != SCTP_BOUND &&
       s->state != SCTP_LISTEN) {
    while (pos < offset)
     pos += xprintf(" ");
    pos += xprintf("%u",
        ntohs(faddr->encaps_port));
   }
   offset += 7;
  }
  if (opt_s) {
   if (faddr != ((void*)0) &&
       s->proto == 129 &&
       s->state != SCTP_CLOSED &&
       s->state != SCTP_BOUND &&
       s->state != SCTP_LISTEN) {
    while (pos < offset)
     pos += xprintf(" ");
    pos += xprintf("%s",
        sctp_path_state(faddr->state));
   }
   offset += 13;
  }
  if (first) {
   if (opt_s) {
    if (s->proto == 129 ||
        s->proto == 128) {
     while (pos < offset)
      pos += xprintf(" ");
     switch (s->proto) {
     case 129:
      pos += xprintf("%s",
          sctp_conn_state(s->state));
      break;
     case 128:
      if (s->state >= 0 &&
          s->state < TCP_NSTATES)
       pos += xprintf("%s",
           tcpstates[s->state]);
      else
       pos += xprintf("?");
      break;
     }
    }
    offset += 13;
   }
   if (opt_S && s->proto == 128) {
    while (pos < offset)
     pos += xprintf(" ");
    xprintf("%.*s", TCP_FUNCTION_NAME_LEN_MAX,
        s->stack);
   }
  }
  if (laddr != ((void*)0))
   laddr = laddr->next;
  if (faddr != ((void*)0))
   faddr = faddr->next;
  if ((laddr != ((void*)0)) || (faddr != ((void*)0))) {
   xprintf("\n");
   pos = 0;
  }
  first = 0;
 }
 xprintf("\n");
}
