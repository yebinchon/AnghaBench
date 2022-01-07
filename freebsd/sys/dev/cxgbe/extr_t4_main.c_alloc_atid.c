
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union aopen_entry {void* data; union aopen_entry* next; } ;
struct tid_info {int atid_lock; int atids_in_use; union aopen_entry* afree; union aopen_entry* atid_tab; } ;
struct adapter {struct tid_info tids; } ;


 int MPASS (int) ;
 int M_TID_TID ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
alloc_atid(struct adapter *sc, void *ctx)
{
 struct tid_info *t = &sc->tids;
 int atid = -1;

 mtx_lock(&t->atid_lock);
 if (t->afree) {
  union aopen_entry *p = t->afree;

  atid = p - t->atid_tab;
  MPASS(atid <= M_TID_TID);
  t->afree = p->next;
  p->data = ctx;
  t->atids_in_use++;
 }
 mtx_unlock(&t->atid_lock);
 return (atid);
}
