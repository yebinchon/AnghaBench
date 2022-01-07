
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int b_buf; } ;
struct ngatm_msg {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct ngatm_msg*,int ) ;
 int M_UNIMSG ;
 int free (int ,int ) ;
 int link ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ngatm_freeuni ;
 int ngatm_unilist_mtx ;

void
uni_msg_destroy(struct uni_msg *m)
{
 struct ngatm_msg *a;

 a = (struct ngatm_msg *)m;

 free(m->b_buf, M_UNIMSG);

 mtx_lock(&ngatm_unilist_mtx);
 LIST_INSERT_HEAD(&ngatm_freeuni, a, link);
 mtx_unlock(&ngatm_unilist_mtx);
}
