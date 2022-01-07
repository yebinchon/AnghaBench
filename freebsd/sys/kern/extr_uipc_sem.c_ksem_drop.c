
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksem {int ks_cv; int ks_ref; } ;


 int M_KSEM ;
 int cv_destroy (int *) ;
 int free (struct ksem*,int ) ;
 int ksem_count_lock ;
 int mac_posixsem_destroy (struct ksem*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nsems ;
 scalar_t__ refcount_release (int *) ;

__attribute__((used)) static void
ksem_drop(struct ksem *ks)
{

 if (refcount_release(&ks->ks_ref)) {



  cv_destroy(&ks->ks_cv);
  free(ks, M_KSEM);
  mtx_lock(&ksem_count_lock);
  nsems--;
  mtx_unlock(&ksem_count_lock);
 }
}
