
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_6__ {scalar_t__ state; scalar_t__ seqlo; int seqhi; } ;
struct TYPE_4__ {int ptr; } ;
struct pf_state {scalar_t__ timeout; int refs; int tag; TYPE_3__ src; TYPE_2__** key; TYPE_1__ rule; } ;
struct pf_idhash {int dummy; } ;
struct TYPE_5__ {int * port; int * addr; int af; } ;


 int LIST_REMOVE (struct pf_state*,int ) ;
 scalar_t__ PFTM_UNLINKED ;
 int PF_ENTER_LOCKED ;
 int PF_HASHROW_ASSERT (struct pf_idhash*) ;
 int PF_HASHROW_LOCK (struct pf_idhash*) ;
 int PF_HASHROW_UNLOCK (struct pf_idhash*) ;
 size_t PF_IDHASH (struct pf_state*) ;
 size_t PF_SK_WIRE ;
 scalar_t__ PF_TCPS_PROXY_DST ;
 int STATE_DEC_COUNTERS (struct pf_state*) ;
 int TH_ACK ;
 int TH_RST ;
 struct pf_idhash* V_pf_idhash ;
 int V_pfsync_delete_state_ptr (struct pf_state*) ;
 int entry ;
 int pf_detach_state (struct pf_state*) ;
 int pf_release_state (struct pf_state*) ;
 int pf_send_tcp (int *,int ,int ,int *,int *,int ,int ,int ,scalar_t__,int,int ,int ,int ,int,int ,int *) ;
 int pf_src_tree_remove_state (struct pf_state*) ;
 int refcount_release (int *) ;

int
pf_unlink_state(struct pf_state *s, u_int flags)
{
 struct pf_idhash *ih = &V_pf_idhash[PF_IDHASH(s)];

 if ((flags & PF_ENTER_LOCKED) == 0)
  PF_HASHROW_LOCK(ih);
 else
  PF_HASHROW_ASSERT(ih);

 if (s->timeout == PFTM_UNLINKED) {





  PF_HASHROW_UNLOCK(ih);
  return (0);
 }

 if (s->src.state == PF_TCPS_PROXY_DST) {

  pf_send_tcp(((void*)0), s->rule.ptr, s->key[PF_SK_WIRE]->af,
      &s->key[PF_SK_WIRE]->addr[1],
      &s->key[PF_SK_WIRE]->addr[0],
      s->key[PF_SK_WIRE]->port[1],
      s->key[PF_SK_WIRE]->port[0],
      s->src.seqhi, s->src.seqlo + 1,
      TH_RST|TH_ACK, 0, 0, 0, 1, s->tag, ((void*)0));
 }

 LIST_REMOVE(s, entry);
 pf_src_tree_remove_state(s);

 if (V_pfsync_delete_state_ptr != ((void*)0))
  V_pfsync_delete_state_ptr(s);

 STATE_DEC_COUNTERS(s);

 s->timeout = PFTM_UNLINKED;

 PF_HASHROW_UNLOCK(ih);

 pf_detach_state(s);


 (void)refcount_release(&s->refs);

 return (pf_release_state(s));
}
