
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsusrgrp {int * lug_cred; int lug_namelen; int lug_name; int lug_gid; int lug_uid; } ;
struct nfsrv_lughash {int lughead; int mtx; } ;


 int MA_OWNED ;
 int M_NFSUSERGROUP ;
 struct nfsrv_lughash* NFSGROUPHASH (int ) ;
 struct nfsrv_lughash* NFSGROUPNAMEHASH (int ,int ) ;
 struct nfsrv_lughash* NFSUSERHASH (int ) ;
 struct nfsrv_lughash* NFSUSERNAMEHASH (int ,int ) ;
 int TAILQ_REMOVE (int *,struct nfsusrgrp*,int ) ;
 int atomic_add_int (int *,int) ;
 int crfree (int *) ;
 int free (struct nfsusrgrp*,int ) ;
 int lug_namehash ;
 int lug_numhash ;
 int mtx_assert (int *,int ) ;
 int nfsrv_usercnt ;

__attribute__((used)) static void
nfsrv_removeuser(struct nfsusrgrp *usrp, int isuser)
{
 struct nfsrv_lughash *hp;

 if (isuser != 0) {
  hp = NFSUSERHASH(usrp->lug_uid);
  mtx_assert(&hp->mtx, MA_OWNED);
  TAILQ_REMOVE(&hp->lughead, usrp, lug_numhash);
  hp = NFSUSERNAMEHASH(usrp->lug_name, usrp->lug_namelen);
  mtx_assert(&hp->mtx, MA_OWNED);
  TAILQ_REMOVE(&hp->lughead, usrp, lug_namehash);
 } else {
  hp = NFSGROUPHASH(usrp->lug_gid);
  mtx_assert(&hp->mtx, MA_OWNED);
  TAILQ_REMOVE(&hp->lughead, usrp, lug_numhash);
  hp = NFSGROUPNAMEHASH(usrp->lug_name, usrp->lug_namelen);
  mtx_assert(&hp->mtx, MA_OWNED);
  TAILQ_REMOVE(&hp->lughead, usrp, lug_namehash);
 }
 atomic_add_int(&nfsrv_usercnt, -1);
 if (usrp->lug_cred != ((void*)0))
  crfree(usrp->lug_cred);
 free(usrp, M_NFSUSERGROUP);
}
