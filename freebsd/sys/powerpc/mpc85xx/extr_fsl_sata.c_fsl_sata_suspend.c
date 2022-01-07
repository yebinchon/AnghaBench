
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_sata_channel {int mtx; scalar_t__ oslots; int sim; } ;
typedef int device_t ;


 int PRIBIO ;
 struct fsl_sata_channel* device_get_softc (int ) ;
 int fsl_sata_deinit (int ) ;
 int hz ;
 int msleep (struct fsl_sata_channel*,int *,int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static int
fsl_sata_suspend(device_t dev)
{
 struct fsl_sata_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 xpt_freeze_simq(ch->sim, 1);
 while (ch->oslots)
  msleep(ch, &ch->mtx, PRIBIO, "fsl_satasusp", hz/100);
 fsl_sata_deinit(dev);
 mtx_unlock(&ch->mtx);
 return (0);
}
