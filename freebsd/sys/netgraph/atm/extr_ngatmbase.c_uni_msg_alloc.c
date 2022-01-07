
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int * b_buf; int * b_lim; int * b_wptr; int * b_rptr; } ;
struct ngatm_msg {int dummy; } ;


 scalar_t__ EXTRA ;
 struct ngatm_msg* LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,struct ngatm_msg*,int ) ;
 int LIST_REMOVE (struct ngatm_msg*,int ) ;
 int M_NOWAIT ;
 int M_UNIMSG ;
 int M_UNIMSGHDR ;
 int M_ZERO ;
 int link ;
 void* malloc (size_t,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ngatm_freeuni ;
 int ngatm_unilist_mtx ;

struct uni_msg *
uni_msg_alloc(size_t s)
{
 struct ngatm_msg *a;
 struct uni_msg *m;

 mtx_lock(&ngatm_unilist_mtx);
 if ((a = LIST_FIRST(&ngatm_freeuni)) != ((void*)0))
  LIST_REMOVE(a, link);
 mtx_unlock(&ngatm_unilist_mtx);

 if (a == ((void*)0)) {
  if ((m = malloc(sizeof(*m), M_UNIMSGHDR, M_NOWAIT)) == ((void*)0))
   return (((void*)0));
  a = (struct ngatm_msg *)m;
 } else
  m = (struct uni_msg *)a;

 s += EXTRA;
 if((m->b_buf = malloc(s, M_UNIMSG, M_NOWAIT | M_ZERO)) == ((void*)0)) {
  mtx_lock(&ngatm_unilist_mtx);
  LIST_INSERT_HEAD(&ngatm_freeuni, a, link);
  mtx_unlock(&ngatm_unilist_mtx);
  return (((void*)0));
 }
 m->b_rptr = m->b_wptr = m->b_buf;
 m->b_lim = m->b_buf + s;

 return (m);
}
