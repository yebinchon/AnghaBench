
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fha_params {TYPE_1__* fha_hash; int sysctl_ctx; } ;
struct TYPE_2__ {int mtx; } ;


 int FHA_HASH_SIZE ;
 int mtx_destroy (int *) ;
 int sysctl_ctx_free (int *) ;

void
fha_uninit(struct fha_params *softc)
{
 int i;

 sysctl_ctx_free(&softc->sysctl_ctx);
 for (i = 0; i < FHA_HASH_SIZE; i++)
  mtx_destroy(&softc->fha_hash[i].mtx);
}
