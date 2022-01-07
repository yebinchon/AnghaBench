
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_9__ {int gid; int uid; } ;
struct TYPE_8__ {TYPE_2__* udp; TYPE_1__* tcp; } ;
struct pf_pdesc {int proto; int af; TYPE_4__ lookup; struct pf_addr* src; struct pf_addr* dst; TYPE_3__ hdr; } ;
struct pf_addr {int v6; int v4; } ;
struct mbuf {int dummy; } ;
struct inpcbinfo {int dummy; } ;
struct inpcb {TYPE_5__* inp_cred; } ;
struct TYPE_10__ {int * cr_groups; int cr_uid; } ;
struct TYPE_7__ {int uh_dport; int uh_sport; } ;
struct TYPE_6__ {int th_dport; int th_sport; } ;




 int GID_MAX ;
 int INPLOOKUP_RLOCKPCB ;
 int INPLOOKUP_WILDCARD ;
 int INP_RLOCK_ASSERT (struct inpcb*) ;
 int INP_RUNLOCK (struct inpcb*) ;


 int PF_IN ;
 int UID_MAX ;
 struct inpcbinfo V_tcbinfo ;
 struct inpcbinfo V_udbinfo ;
 struct inpcb* in6_pcblookup_mbuf (struct inpcbinfo*,int *,int ,int *,int ,int,int *,struct mbuf*) ;
 struct inpcb* in_pcblookup_mbuf (struct inpcbinfo*,int ,int ,int ,int ,int,int *,struct mbuf*) ;

int
pf_socket_lookup(int direction, struct pf_pdesc *pd, struct mbuf *m)
{
 struct pf_addr *saddr, *daddr;
 u_int16_t sport, dport;
 struct inpcbinfo *pi;
 struct inpcb *inp;

 pd->lookup.uid = UID_MAX;
 pd->lookup.gid = GID_MAX;

 switch (pd->proto) {
 case 129:
  if (pd->hdr.tcp == ((void*)0))
   return (-1);
  sport = pd->hdr.tcp->th_sport;
  dport = pd->hdr.tcp->th_dport;
  pi = &V_tcbinfo;
  break;
 case 128:
  if (pd->hdr.udp == ((void*)0))
   return (-1);
  sport = pd->hdr.udp->uh_sport;
  dport = pd->hdr.udp->uh_dport;
  pi = &V_udbinfo;
  break;
 default:
  return (-1);
 }
 if (direction == PF_IN) {
  saddr = pd->src;
  daddr = pd->dst;
 } else {
  u_int16_t p;

  p = sport;
  sport = dport;
  dport = p;
  saddr = pd->dst;
  daddr = pd->src;
 }
 switch (pd->af) {
 default:
  return (-1);
 }
 INP_RLOCK_ASSERT(inp);
 pd->lookup.uid = inp->inp_cred->cr_uid;
 pd->lookup.gid = inp->inp_cred->cr_groups[0];
 INP_RUNLOCK(inp);

 return (1);
}
