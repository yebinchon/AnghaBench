
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct secasvar {int flags; TYPE_2__* lft_s; TYPE_2__* lft_h; TYPE_2__* replay; TYPE_2__* key_enc; TYPE_2__* key_auth; TYPE_1__* tdb_xform; TYPE_2__* natt; } ;
struct TYPE_6__ {struct TYPE_6__* bitmap; struct TYPE_6__* key_data; } ;
struct TYPE_5__ {int (* xf_zeroize ) (struct secasvar*) ;} ;


 int M_IPSEC_MISC ;
 int SADB_X_EXT_F_CLONED ;
 int _KEYLEN (TYPE_2__*) ;
 int bzero (TYPE_2__*,int ) ;
 int free (TYPE_2__*,int ) ;
 int stub1 (struct secasvar*) ;

__attribute__((used)) static void
key_cleansav(struct secasvar *sav)
{

 if (sav->natt != ((void*)0)) {
  free(sav->natt, M_IPSEC_MISC);
  sav->natt = ((void*)0);
 }
 if (sav->flags & SADB_X_EXT_F_CLONED)
  return;




 if (sav->tdb_xform != ((void*)0)) {
  sav->tdb_xform->xf_zeroize(sav);
  sav->tdb_xform = ((void*)0);
 } else {
  if (sav->key_auth != ((void*)0))
   bzero(sav->key_auth->key_data, _KEYLEN(sav->key_auth));
  if (sav->key_enc != ((void*)0))
   bzero(sav->key_enc->key_data, _KEYLEN(sav->key_enc));
 }
 if (sav->key_auth != ((void*)0)) {
  if (sav->key_auth->key_data != ((void*)0))
   free(sav->key_auth->key_data, M_IPSEC_MISC);
  free(sav->key_auth, M_IPSEC_MISC);
  sav->key_auth = ((void*)0);
 }
 if (sav->key_enc != ((void*)0)) {
  if (sav->key_enc->key_data != ((void*)0))
   free(sav->key_enc->key_data, M_IPSEC_MISC);
  free(sav->key_enc, M_IPSEC_MISC);
  sav->key_enc = ((void*)0);
 }
 if (sav->replay != ((void*)0)) {
  if (sav->replay->bitmap != ((void*)0))
   free(sav->replay->bitmap, M_IPSEC_MISC);
  free(sav->replay, M_IPSEC_MISC);
  sav->replay = ((void*)0);
 }
 if (sav->lft_h != ((void*)0)) {
  free(sav->lft_h, M_IPSEC_MISC);
  sav->lft_h = ((void*)0);
 }
 if (sav->lft_s != ((void*)0)) {
  free(sav->lft_s, M_IPSEC_MISC);
  sav->lft_s = ((void*)0);
 }
}
