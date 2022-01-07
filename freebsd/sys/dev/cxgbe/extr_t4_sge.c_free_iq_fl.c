
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vi_info {int dev; } ;
struct sge_iq {int flags; int cntxt_id; int fl_lock; scalar_t__ sdesc; int desc; int ba; int desc_map; int desc_tag; struct adapter* adapter; } ;
struct sge_fl {int flags; int cntxt_id; int fl_lock; scalar_t__ sdesc; int desc; int ba; int desc_map; int desc_tag; struct adapter* adapter; } ;
struct adapter {int pf; int mbox; int dev; } ;
typedef int device_t ;


 int FW_IQ_TYPE_FL_INT_CAP ;
 int IQ_ALLOCATED ;
 int bzero (struct sge_iq*,int) ;
 int device_printf (int ,char*,struct sge_iq*,int) ;
 int free_fl_sdesc (struct adapter*,struct sge_iq*) ;
 int free_ring (struct adapter*,int ,int ,int ,int ) ;
 int mtx_destroy (int *) ;
 scalar_t__ mtx_initialized (int *) ;
 int t4_iq_free (struct adapter*,int ,int ,int ,int ,int,int,int) ;

__attribute__((used)) static int
free_iq_fl(struct vi_info *vi, struct sge_iq *iq, struct sge_fl *fl)
{
 int rc;
 struct adapter *sc = iq->adapter;
 device_t dev;

 if (sc == ((void*)0))
  return (0);

 dev = vi ? vi->dev : sc->dev;

 if (iq->flags & IQ_ALLOCATED) {
  rc = -t4_iq_free(sc, sc->mbox, sc->pf, 0,
      FW_IQ_TYPE_FL_INT_CAP, iq->cntxt_id,
      fl ? fl->cntxt_id : 0xffff, 0xffff);
  if (rc != 0) {
   device_printf(dev,
       "failed to free queue %p: %d\n", iq, rc);
   return (rc);
  }
  iq->flags &= ~IQ_ALLOCATED;
 }

 free_ring(sc, iq->desc_tag, iq->desc_map, iq->ba, iq->desc);

 bzero(iq, sizeof(*iq));

 if (fl) {
  free_ring(sc, fl->desc_tag, fl->desc_map, fl->ba,
      fl->desc);

  if (fl->sdesc)
   free_fl_sdesc(sc, fl);

  if (mtx_initialized(&fl->fl_lock))
   mtx_destroy(&fl->fl_lock);

  bzero(fl, sizeof(*fl));
 }

 return (0);
}
