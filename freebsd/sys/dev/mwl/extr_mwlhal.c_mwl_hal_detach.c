
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_hal_priv {int mh_mtx; int mh_dmat; int mh_dmamap; int mh_cmdbuf; } ;
struct mwl_hal {int dummy; } ;


 struct mwl_hal_priv* MWLPRIV (struct mwl_hal*) ;
 int M_DEVBUF ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int free (struct mwl_hal_priv*,int ) ;
 int mtx_destroy (int *) ;

void
mwl_hal_detach(struct mwl_hal *mh0)
{
 struct mwl_hal_priv *mh = MWLPRIV(mh0);

 bus_dmamem_free(mh->mh_dmat, mh->mh_cmdbuf, mh->mh_dmamap);
 bus_dma_tag_destroy(mh->mh_dmat);
 mtx_destroy(&mh->mh_mtx);
 free(mh, M_DEVBUF);
}
