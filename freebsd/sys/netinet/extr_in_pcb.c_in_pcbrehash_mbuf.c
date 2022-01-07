
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct mbuf {int dummy; } ;
struct inpcbinfo {int ipi_hashmask; struct inpcbhead* ipi_hashbase; } ;
struct inpcbhead {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct inpcb {int inp_flags; int inp_vflag; int inp_fport; int inp_lport; TYPE_1__ inp_faddr; int in6p_faddr; struct inpcbinfo* inp_pcbinfo; } ;


 int CK_LIST_INSERT_HEAD (struct inpcbhead*,struct inpcb*,int ) ;
 int CK_LIST_REMOVE (struct inpcb*,int ) ;
 int INP6_PCBHASHKEY (int *) ;
 int INP_HASH_WLOCK_ASSERT (struct inpcbinfo*) ;
 int INP_INHASHLIST ;
 int INP_IPV6 ;
 size_t INP_PCBHASH (int ,int ,int ,int ) ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int KASSERT (int,char*) ;
 int in_pcbgroup_update (struct inpcb*) ;
 int in_pcbgroup_update_mbuf (struct inpcb*,struct mbuf*) ;
 int inp_hash ;

void
in_pcbrehash_mbuf(struct inpcb *inp, struct mbuf *m)
{
 struct inpcbinfo *pcbinfo = inp->inp_pcbinfo;
 struct inpcbhead *head;
 u_int32_t hashkey_faddr;

 INP_WLOCK_ASSERT(inp);
 INP_HASH_WLOCK_ASSERT(pcbinfo);

 KASSERT(inp->inp_flags & INP_INHASHLIST,
     ("in_pcbrehash: !INP_INHASHLIST"));






 hashkey_faddr = inp->inp_faddr.s_addr;

 head = &pcbinfo->ipi_hashbase[INP_PCBHASH(hashkey_faddr,
  inp->inp_lport, inp->inp_fport, pcbinfo->ipi_hashmask)];

 CK_LIST_REMOVE(inp, inp_hash);
 CK_LIST_INSERT_HEAD(head, inp, inp_hash);







}
