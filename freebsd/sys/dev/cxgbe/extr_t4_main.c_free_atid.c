
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aopen_entry {union aopen_entry* next; } ;
struct tid_info {int atid_lock; int atids_in_use; union aopen_entry* afree; union aopen_entry* atid_tab; } ;
struct adapter {struct tid_info tids; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
free_atid(struct adapter *sc, int atid)
{
 struct tid_info *t = &sc->tids;
 union aopen_entry *p = &t->atid_tab[atid];

 mtx_lock(&t->atid_lock);
 p->next = t->afree;
 t->afree = p;
 t->atids_in_use--;
 mtx_unlock(&t->atid_lock);
}
