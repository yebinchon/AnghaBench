
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchap {struct rchap* rchap_challenge; struct rchap* rchap_secret; } ;


 int free (struct rchap*) ;

void
rchap_delete(struct rchap *rchap)
{

 free(rchap->rchap_secret);
 free(rchap->rchap_challenge);
 free(rchap);
}
