
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsl_sata_channel {int mtx; int sim; } ;
typedef int device_t ;


 int TRUE ;
 struct fsl_sata_channel* device_get_softc (int ) ;
 int fsl_sata_init (int ) ;
 int fsl_sata_reset (struct fsl_sata_channel*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static int
fsl_sata_resume(device_t dev)
{
 struct fsl_sata_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 fsl_sata_init(dev);
 fsl_sata_reset(ch);
 xpt_release_simq(ch->sim, TRUE);
 mtx_unlock(&ch->mtx);
 return (0);
}
