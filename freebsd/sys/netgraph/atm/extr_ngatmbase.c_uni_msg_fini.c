
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ngatm_msg {int dummy; } ;


 struct ngatm_msg* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct ngatm_msg*,int ) ;
 int M_UNIMSGHDR ;
 int free (struct ngatm_msg*,int ) ;
 int link ;
 int mtx_destroy (int *) ;
 int ngatm_freeuni ;
 int ngatm_unilist_mtx ;

__attribute__((used)) static void
uni_msg_fini(void)
{
 struct ngatm_msg *h;


 while ((h = LIST_FIRST(&ngatm_freeuni)) != ((void*)0)) {
  LIST_REMOVE(h, link);
  free(h, M_UNIMSGHDR);
 }

 mtx_destroy(&ngatm_unilist_mtx);
}
