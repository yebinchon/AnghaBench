
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcbport {int inp_flags; int phd_epoch_ctx; int phd_pcblist; struct inpcbport* inp_phd; scalar_t__ inp_gencnt; struct inpcbinfo* inp_pcbinfo; } ;
struct inpcbinfo {int ipi_count; scalar_t__ ipi_gencnt; } ;
struct inpcb {int inp_flags; int phd_epoch_ctx; int phd_pcblist; struct inpcb* inp_phd; scalar_t__ inp_gencnt; struct inpcbinfo* inp_pcbinfo; } ;


 int * CK_LIST_FIRST (int *) ;
 int CK_LIST_REMOVE (struct inpcbport*,int ) ;
 int INP_HASH_WLOCK (struct inpcbinfo*) ;
 int INP_HASH_WUNLOCK (struct inpcbinfo*) ;
 int INP_INFO_WLOCK_ASSERT (struct inpcbinfo*) ;
 int INP_INHASHLIST ;
 int INP_LIST_WLOCK_ASSERT (struct inpcbinfo*) ;
 int INP_WLOCK_ASSERT (struct inpcbport*) ;
 int NET_EPOCH_ASSERT () ;
 struct inpcbinfo V_tcbinfo ;
 int epoch_call (int ,int *,int ) ;
 int in_pcbgroup_remove (struct inpcbport*) ;
 int in_pcbremlbgrouphash (struct inpcbport*) ;
 int inp_hash ;
 int inp_list ;
 int inp_portlist ;
 int inpcbport_free ;
 int net_epoch_preempt ;
 int phd_hash ;

__attribute__((used)) static void
in_pcbremlists(struct inpcb *inp)
{
 struct inpcbinfo *pcbinfo = inp->inp_pcbinfo;
 INP_WLOCK_ASSERT(inp);
 INP_LIST_WLOCK_ASSERT(pcbinfo);

 inp->inp_gencnt = ++pcbinfo->ipi_gencnt;
 if (inp->inp_flags & INP_INHASHLIST) {
  struct inpcbport *phd = inp->inp_phd;

  INP_HASH_WLOCK(pcbinfo);


  in_pcbremlbgrouphash(inp);

  CK_LIST_REMOVE(inp, inp_hash);
  CK_LIST_REMOVE(inp, inp_portlist);
  if (CK_LIST_FIRST(&phd->phd_pcblist) == ((void*)0)) {
   CK_LIST_REMOVE(phd, phd_hash);
   epoch_call(net_epoch_preempt, &phd->phd_epoch_ctx, inpcbport_free);
  }
  INP_HASH_WUNLOCK(pcbinfo);
  inp->inp_flags &= ~INP_INHASHLIST;
 }
 CK_LIST_REMOVE(inp, inp_list);
 pcbinfo->ipi_count--;



}
