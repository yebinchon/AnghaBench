
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstp_state {int bs_bstpcallout; int bs_bplist; } ;


 int BSTP_LOCK_DESTROY (struct bstp_state*) ;
 int KASSERT (int ,char*) ;
 int LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct bstp_state*,int ) ;
 int bs_list ;
 int bstp_list_mtx ;
 int callout_drain (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
bstp_detach(struct bstp_state *bs)
{
 KASSERT(LIST_EMPTY(&bs->bs_bplist), ("bstp still active"));

 mtx_lock(&bstp_list_mtx);
 LIST_REMOVE(bs, bs_list);
 mtx_unlock(&bstp_list_mtx);
 callout_drain(&bs->bs_bstpcallout);
 BSTP_LOCK_DESTROY(bs);
}
