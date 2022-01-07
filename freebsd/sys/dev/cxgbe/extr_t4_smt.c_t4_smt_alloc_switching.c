
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct smt_entry {int dummy; } ;
struct smt_data {int lock; } ;


 int MPASS (int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 struct smt_entry* t4_find_or_alloc_sme (struct smt_data*,int *) ;

struct smt_entry *
t4_smt_alloc_switching(struct smt_data *s, uint8_t *smac)
{
 struct smt_entry *e;

 MPASS(s != ((void*)0));
 rw_wlock(&s->lock);
 e = t4_find_or_alloc_sme(s, smac);
 rw_wunlock(&s->lock);
 return e;
}
