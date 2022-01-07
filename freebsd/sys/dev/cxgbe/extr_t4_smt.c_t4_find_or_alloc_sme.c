
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct smt_entry {scalar_t__ state; int refcnt; int smac; } ;
struct smt_data {size_t smt_size; struct smt_entry* smtab; int lock; } ;


 int ETHER_ADDR_LEN ;
 int RA_WLOCKED ;
 scalar_t__ SMT_STATE_SWITCHING ;
 scalar_t__ SMT_STATE_UNUSED ;
 int atomic_add_int (int *,int) ;
 scalar_t__ atomic_load_acq_int (int *) ;
 scalar_t__ memcmp (int ,int *,int ) ;
 int rw_assert (int *,int ) ;

struct smt_entry *
t4_find_or_alloc_sme(struct smt_data *s, uint8_t *smac)
{
 struct smt_entry *end, *e;
 struct smt_entry *first_free = ((void*)0);

 rw_assert(&s->lock, RA_WLOCKED);
 for (e = &s->smtab[0], end = &s->smtab[s->smt_size]; e != end; ++e) {
  if (atomic_load_acq_int(&e->refcnt) == 0) {
   if (!first_free)
    first_free = e;
  } else {
   if (e->state == SMT_STATE_SWITCHING) {




    if (memcmp(e->smac, smac, ETHER_ADDR_LEN) == 0)
     goto found_reuse;
   }
  }
 }
 if (first_free) {
  e = first_free;
  goto found;
 }
 return ((void*)0);

found:
 e->state = SMT_STATE_UNUSED;
found_reuse:
 atomic_add_int(&e->refcnt, 1);
 return e;
}
