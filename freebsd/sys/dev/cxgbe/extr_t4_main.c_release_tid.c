
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wrqe {int dummy; } ;
struct sge_wrq {int dummy; } ;
struct cpl_tid_release {int dummy; } ;
struct adapter {int dummy; } ;


 int CPL_TID_RELEASE ;
 int INIT_TP_WR_MIT_CPL (struct cpl_tid_release*,int ,int) ;
 struct wrqe* alloc_wrqe (int,struct sge_wrq*) ;
 int queue_tid_release (struct adapter*,int) ;
 int t4_wrq_tx (struct adapter*,struct wrqe*) ;
 struct cpl_tid_release* wrtod (struct wrqe*) ;

void
release_tid(struct adapter *sc, int tid, struct sge_wrq *ctrlq)
{
 struct wrqe *wr;
 struct cpl_tid_release *req;

 wr = alloc_wrqe(sizeof(*req), ctrlq);
 if (wr == ((void*)0)) {
  queue_tid_release(sc, tid);
  return;
 }
 req = wrtod(wr);

 INIT_TP_WR_MIT_CPL(req, CPL_TID_RELEASE, tid);

 t4_wrq_tx(sc, wr);
}
