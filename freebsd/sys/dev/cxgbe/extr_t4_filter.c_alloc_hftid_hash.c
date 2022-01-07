
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int ntids; int hftid_cv; int hftid_lock; int * hftid_hash_4t; int hftid_4t_mask; int * hftid_hash_tid; int hftid_tid_mask; } ;


 int ENOMEM ;
 int MPASS (int) ;
 int MTX_DEF ;
 int M_CXGBE ;
 int cv_init (int *,char*) ;
 int hashdestroy (int *,int ,int ) ;
 void* hashinit_flags (int,int ,int *,int) ;
 int max (int,int) ;
 int mtx_init (int *,char*,int ,int ) ;

__attribute__((used)) static int
alloc_hftid_hash(struct tid_info *t, int flags)
{
 int n;

 MPASS(t->ntids > 0);
 MPASS(t->hftid_hash_4t == ((void*)0));
 MPASS(t->hftid_hash_tid == ((void*)0));

 n = max(t->ntids / 1024, 16);
 t->hftid_hash_4t = hashinit_flags(n, M_CXGBE, &t->hftid_4t_mask, flags);
 if (t->hftid_hash_4t == ((void*)0))
  return (ENOMEM);
 t->hftid_hash_tid = hashinit_flags(n, M_CXGBE, &t->hftid_tid_mask,
     flags);
 if (t->hftid_hash_tid == ((void*)0)) {
  hashdestroy(t->hftid_hash_4t, M_CXGBE, t->hftid_4t_mask);
  t->hftid_hash_4t = ((void*)0);
  return (ENOMEM);
 }

 mtx_init(&t->hftid_lock, "T4 hashfilters", 0, MTX_DEF);
 cv_init(&t->hftid_cv, "t4hfcv");

 return (0);
}
