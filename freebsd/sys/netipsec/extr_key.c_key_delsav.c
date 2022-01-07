
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secasvar {scalar_t__ state; scalar_t__ refcnt; int flags; int lft_c; struct secasvar* lock; } ;


 int IPSEC_ASSERT (int,char*) ;
 int M_IPSEC_MISC ;
 int M_IPSEC_SA ;
 scalar_t__ SADB_SASTATE_DEAD ;
 int SADB_X_EXT_F_CLONED ;
 int V_key_lft_zone ;
 int free (struct secasvar*,int ) ;
 int key_cleansav (struct secasvar*) ;
 int mtx_destroy (struct secasvar*) ;
 int uma_zfree (int ,int ) ;

__attribute__((used)) static void
key_delsav(struct secasvar *sav)
{
 IPSEC_ASSERT(sav != ((void*)0), ("null sav"));
 IPSEC_ASSERT(sav->state == SADB_SASTATE_DEAD,
     ("attempt to free non DEAD SA %p", sav));
 IPSEC_ASSERT(sav->refcnt == 0, ("reference count %u > 0",
     sav->refcnt));






 key_cleansav(sav);
 if ((sav->flags & SADB_X_EXT_F_CLONED) == 0) {
  mtx_destroy(sav->lock);
  free(sav->lock, M_IPSEC_MISC);
  uma_zfree(V_key_lft_zone, sav->lft_c);
 }
 free(sav, M_IPSEC_SA);
}
