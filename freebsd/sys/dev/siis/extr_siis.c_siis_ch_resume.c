
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_channel {int mtx; int sim; } ;
typedef int device_t ;


 int TRUE ;
 struct siis_channel* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int siis_ch_init (int ) ;
 int siis_reset (int ) ;
 int xpt_release_simq (int ,int ) ;

__attribute__((used)) static int
siis_ch_resume(device_t dev)
{
 struct siis_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 siis_ch_init(dev);
 siis_reset(dev);
 xpt_release_simq(ch->sim, TRUE);
 mtx_unlock(&ch->mtx);
 return (0);
}
