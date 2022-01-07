
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcbport {int inp_refcount; int inp_flags; int inp_pcbinfo; int phd_epoch_ctx; int phd_pcblist; struct inpcbport* inp_phd; int * inp_ppcb; int * inp_socket; } ;
struct inpcb {int inp_refcount; int inp_flags; int inp_pcbinfo; int phd_epoch_ctx; int phd_pcblist; struct inpcb* inp_phd; int * inp_ppcb; int * inp_socket; } ;


 int * CK_LIST_FIRST (int *) ;
 int CK_LIST_REMOVE (struct inpcbport*,int ) ;
 int INP_DROPPED ;
 int INP_HASH_WLOCK (int ) ;
 int INP_HASH_WUNLOCK (int ) ;
 int INP_INHASHLIST ;
 int INP_WLOCK_ASSERT (struct inpcbport*) ;
 int MPASS (int) ;
 int epoch_call (int ,int *,int ) ;
 int in_pcbgroup_remove (struct inpcbport*) ;
 int in_pcbremlbgrouphash (struct inpcbport*) ;
 int inp_hash ;
 int inp_portlist ;
 int inpcbport_free ;
 int net_epoch_preempt ;
 int phd_hash ;

void
in_pcbdrop(struct inpcb *inp)
{

 INP_WLOCK_ASSERT(inp);
 inp->inp_flags |= INP_DROPPED;
 if (inp->inp_flags & INP_INHASHLIST) {
  struct inpcbport *phd = inp->inp_phd;

  INP_HASH_WLOCK(inp->inp_pcbinfo);
  in_pcbremlbgrouphash(inp);
  CK_LIST_REMOVE(inp, inp_hash);
  CK_LIST_REMOVE(inp, inp_portlist);
  if (CK_LIST_FIRST(&phd->phd_pcblist) == ((void*)0)) {
   CK_LIST_REMOVE(phd, phd_hash);
   epoch_call(net_epoch_preempt, &phd->phd_epoch_ctx, inpcbport_free);
  }
  INP_HASH_WUNLOCK(inp->inp_pcbinfo);
  inp->inp_flags &= ~INP_INHASHLIST;



 }
}
