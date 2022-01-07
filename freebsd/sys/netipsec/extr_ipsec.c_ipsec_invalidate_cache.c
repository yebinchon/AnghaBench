
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct secpolicy {int dummy; } ;
struct inpcb {TYPE_1__* inp_sp; } ;
struct TYPE_2__ {int flags; struct secpolicy* sp_out; struct secpolicy* sp_in; } ;


 int INP_INBOUND_POLICY ;
 int INP_OUTBOUND_POLICY ;
 int INP_WLOCK_ASSERT (struct inpcb*) ;
 scalar_t__ IPSEC_DIR_OUTBOUND ;
 int key_freesp (struct secpolicy**) ;

__attribute__((used)) static void
ipsec_invalidate_cache(struct inpcb *inp, u_int dir)
{
 struct secpolicy *sp;

 INP_WLOCK_ASSERT(inp);
 if (dir == IPSEC_DIR_OUTBOUND) {
  if (inp->inp_sp->flags & INP_INBOUND_POLICY)
   return;
  sp = inp->inp_sp->sp_in;
  inp->inp_sp->sp_in = ((void*)0);
 } else {
  if (inp->inp_sp->flags & INP_OUTBOUND_POLICY)
   return;
  sp = inp->inp_sp->sp_out;
  inp->inp_sp->sp_out = ((void*)0);
 }
 if (sp != ((void*)0))
  key_freesp(&sp);
}
