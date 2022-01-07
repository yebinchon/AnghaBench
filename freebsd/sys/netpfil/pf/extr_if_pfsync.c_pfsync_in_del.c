
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pfsync_state {int creatorid; int id; } ;
struct pfsync_pkt {int dummy; } ;
struct pf_state {int state_flags; } ;
struct mbuf {scalar_t__ m_data; } ;
struct TYPE_2__ {int pfsyncs_badstate; int pfsyncs_badlen; } ;


 int PFSTATE_NOSYNC ;
 int PF_ENTER_LOCKED ;
 TYPE_1__ V_pfsyncstats ;
 struct mbuf* m_pulldown (struct mbuf*,int,int,int*) ;
 struct pf_state* pf_find_state_byid (int ,int ) ;
 int pf_unlink_state (struct pf_state*,int ) ;

__attribute__((used)) static int
pfsync_in_del(struct pfsync_pkt *pkt, struct mbuf *m, int offset, int count)
{
 struct mbuf *mp;
 struct pfsync_state *sa, *sp;
 struct pf_state *st;
 int len = count * sizeof(*sp);
 int offp, i;

 mp = m_pulldown(m, offset, len, &offp);
 if (mp == ((void*)0)) {
  V_pfsyncstats.pfsyncs_badlen++;
  return (-1);
 }
 sa = (struct pfsync_state *)(mp->m_data + offp);

 for (i = 0; i < count; i++) {
  sp = &sa[i];

  st = pf_find_state_byid(sp->id, sp->creatorid);
  if (st == ((void*)0)) {
   V_pfsyncstats.pfsyncs_badstate++;
   continue;
  }
  st->state_flags |= PFSTATE_NOSYNC;
  pf_unlink_state(st, PF_ENTER_LOCKED);
 }

 return (len);
}
