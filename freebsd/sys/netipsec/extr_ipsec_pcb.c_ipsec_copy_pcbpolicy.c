
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secpolicy {int spidx; } ;
struct inpcb {TYPE_1__* inp_sp; } ;
struct TYPE_2__ {int flags; struct secpolicy* sp_out; struct secpolicy* sp_in; } ;


 int ENOBUFS ;
 int INP_INBOUND_POLICY ;
 int INP_LOCK_ASSERT (struct inpcb*) ;
 int INP_OUTBOUND_POLICY ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 int IPSEC_ASSERT (int,char*) ;
 int IPSEC_DIR_INBOUND ;
 int IPSEC_DIR_OUTBOUND ;
 struct secpolicy* ipsec_deepcopy_pcbpolicy (struct secpolicy*) ;
 int ipsec_setspidx_inpcb (struct inpcb*,int *,int ) ;
 int key_freesp (struct secpolicy**) ;

int
ipsec_copy_pcbpolicy(struct inpcb *old, struct inpcb *new)
{
 struct secpolicy *sp;






 if (old->inp_sp == ((void*)0))
  return (0);

 IPSEC_ASSERT(new->inp_sp != ((void*)0), ("new inp_sp is NULL"));
 IPSEC_ASSERT((new->inp_sp->flags & (
     INP_INBOUND_POLICY | INP_OUTBOUND_POLICY)) == 0,
     ("new PCB already has configured policies"));
 INP_WLOCK_ASSERT(new);
 INP_LOCK_ASSERT(old);

 if (old->inp_sp->flags & INP_INBOUND_POLICY) {
  sp = ipsec_deepcopy_pcbpolicy(old->inp_sp->sp_in);
  if (sp == ((void*)0))
   return (ENOBUFS);
  ipsec_setspidx_inpcb(new, &sp->spidx, IPSEC_DIR_INBOUND);
  if (new->inp_sp->sp_in != ((void*)0))
   key_freesp(&new->inp_sp->sp_in);
  new->inp_sp->sp_in = sp;
  new->inp_sp->flags |= INP_INBOUND_POLICY;
 }
 if (old->inp_sp->flags & INP_OUTBOUND_POLICY) {
  sp = ipsec_deepcopy_pcbpolicy(old->inp_sp->sp_out);
  if (sp == ((void*)0))
   return (ENOBUFS);
  ipsec_setspidx_inpcb(new, &sp->spidx, IPSEC_DIR_OUTBOUND);
  if (new->inp_sp->sp_out != ((void*)0))
   key_freesp(&new->inp_sp->sp_out);
  new->inp_sp->sp_out = sp;
  new->inp_sp->flags |= INP_OUTBOUND_POLICY;
 }
 return (0);
}
