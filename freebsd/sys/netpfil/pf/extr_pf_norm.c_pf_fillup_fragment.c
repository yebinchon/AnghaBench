
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int u_short ;
struct pf_frent {int fe_len; scalar_t__ fe_off; int fe_m; scalar_t__ fe_mff; } ;
struct pf_fragment_cmp {scalar_t__ frc_af; int frc_id; } ;
struct pf_fragment {int fr_maxlen; int fr_holes; int fr_queue; int fr_timeout; int fr_entries; int fr_firstoff; } ;
struct TYPE_2__ {scalar_t__ fe_off; scalar_t__ fe_len; int fe_mff; } ;


 scalar_t__ AF_INET ;
 int DPFPRINTF (char*) ;
 scalar_t__ IP_MAXPACKET ;
 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int PFRES_FRAG ;
 int PFRES_MEMORY ;
 int PF_FRAG_ASSERT () ;
 int RB_INSERT (int ,int *,struct pf_fragment*) ;
 int REASON_SET (int *,int ) ;
 int TAILQ_EMPTY (int *) ;
 struct pf_frent* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_HEAD (int *,struct pf_fragment*,int ) ;
 TYPE_1__* TAILQ_LAST (int *,int ) ;
 struct pf_frent* TAILQ_NEXT (struct pf_frent*,int ) ;
 int V_pf_frag_tree ;
 int V_pf_frag_z ;
 int V_pf_fragqueue ;
 int V_pf_frent_z ;
 int fr_next ;
 int frag_next ;
 int m_adj (int ,scalar_t__) ;
 int m_freem (int ) ;
 int memset (int ,int ,int) ;
 struct pf_fragment* pf_find_fragment (struct pf_fragment_cmp*,int *) ;
 int pf_flush_fragments () ;
 int pf_frag_tree ;
 int pf_fragq ;
 scalar_t__ pf_frent_insert (struct pf_fragment*,struct pf_frent*,struct pf_frent*) ;
 struct pf_frent* pf_frent_previous (struct pf_fragment*,struct pf_frent*) ;
 int pf_frent_remove (struct pf_fragment*,struct pf_frent*) ;
 int time_uptime ;
 struct pf_fragment* uma_zalloc (int ,int ) ;
 int uma_zfree (int ,struct pf_frent*) ;

__attribute__((used)) static struct pf_fragment *
pf_fillup_fragment(struct pf_fragment_cmp *key, struct pf_frent *frent,
    u_short *reason)
{
 struct pf_frent *after, *next, *prev;
 struct pf_fragment *frag;
 uint16_t total;

 PF_FRAG_ASSERT();


 if (frent->fe_len == 0) {
  DPFPRINTF(("bad fragment: len 0"));
  goto bad_fragment;
 }


 if (frent->fe_mff && (frent->fe_len & 0x7)) {
  DPFPRINTF(("bad fragment: mff and len %d", frent->fe_len));
  goto bad_fragment;
 }


 if (frent->fe_off + frent->fe_len > IP_MAXPACKET) {
  DPFPRINTF(("bad fragment: max packet %d",
      frent->fe_off + frent->fe_len));
  goto bad_fragment;
 }

 DPFPRINTF((key->frc_af == AF_INET ?
     "reass frag %d @ %d-%d" : "reass frag %#08x @ %d-%d",
     key->frc_id, frent->fe_off, frent->fe_off + frent->fe_len));


 frag = pf_find_fragment(key, &V_pf_frag_tree);


 if (frag == ((void*)0)) {
  frag = uma_zalloc(V_pf_frag_z, M_NOWAIT);
  if (frag == ((void*)0)) {
   pf_flush_fragments();
   frag = uma_zalloc(V_pf_frag_z, M_NOWAIT);
   if (frag == ((void*)0)) {
    REASON_SET(reason, PFRES_MEMORY);
    goto drop_fragment;
   }
  }

  *(struct pf_fragment_cmp *)frag = *key;
  memset(frag->fr_firstoff, 0, sizeof(frag->fr_firstoff));
  memset(frag->fr_entries, 0, sizeof(frag->fr_entries));
  frag->fr_timeout = time_uptime;
  frag->fr_maxlen = frent->fe_len;
  frag->fr_holes = 1;
  TAILQ_INIT(&frag->fr_queue);

  RB_INSERT(pf_frag_tree, &V_pf_frag_tree, frag);
  TAILQ_INSERT_HEAD(&V_pf_fragqueue, frag, frag_next);


  pf_frent_insert(frag, frent, ((void*)0));

  return (frag);
 }

 KASSERT(!TAILQ_EMPTY(&frag->fr_queue), ("!TAILQ_EMPTY()->fr_queue"));


 if (frent->fe_len > frag->fr_maxlen)
  frag->fr_maxlen = frent->fe_len;


 total = TAILQ_LAST(&frag->fr_queue, pf_fragq)->fe_off +
  TAILQ_LAST(&frag->fr_queue, pf_fragq)->fe_len;


 if (frent->fe_off + frent->fe_len < total && !frent->fe_mff)
  goto bad_fragment;


 if (!TAILQ_LAST(&frag->fr_queue, pf_fragq)->fe_mff) {
  if (frent->fe_off + frent->fe_len > total ||
      (frent->fe_off + frent->fe_len == total && frent->fe_mff))
   goto bad_fragment;
 } else {
  if (frent->fe_off + frent->fe_len == total && !frent->fe_mff)
   goto bad_fragment;
 }


 prev = pf_frent_previous(frag, frent);
 if (prev == ((void*)0)) {
  after = TAILQ_FIRST(&frag->fr_queue);
  KASSERT(after != ((void*)0), ("after != NULL"));
 } else {
  after = TAILQ_NEXT(prev, fr_next);
 }

 if (prev != ((void*)0) && prev->fe_off + prev->fe_len > frent->fe_off) {
  uint16_t precut;

  precut = prev->fe_off + prev->fe_len - frent->fe_off;
  if (precut >= frent->fe_len)
   goto bad_fragment;
  DPFPRINTF(("overlap -%d", precut));
  m_adj(frent->fe_m, precut);
  frent->fe_off += precut;
  frent->fe_len -= precut;
 }

 for (; after != ((void*)0) && frent->fe_off + frent->fe_len > after->fe_off;
     after = next) {
  uint16_t aftercut;

  aftercut = frent->fe_off + frent->fe_len - after->fe_off;
  DPFPRINTF(("adjust overlap %d", aftercut));
  if (aftercut < after->fe_len) {
   m_adj(after->fe_m, aftercut);
   after->fe_off += aftercut;
   after->fe_len -= aftercut;
   break;
  }


  next = TAILQ_NEXT(after, fr_next);
  pf_frent_remove(frag, after);
  m_freem(after->fe_m);
  uma_zfree(V_pf_frent_z, after);
 }


 if (pf_frent_insert(frag, frent, prev)) {
  DPFPRINTF(("fragment queue limit exceeded"));
  goto bad_fragment;
 }

 return (frag);

bad_fragment:
 REASON_SET(reason, PFRES_FRAG);
drop_fragment:
 uma_zfree(V_pf_frent_z, frent);
 return (((void*)0));
}
