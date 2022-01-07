
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_channel {int mtx; } ;
typedef int device_t ;


 struct siis_channel* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int siis_ch_intr (void*) ;

__attribute__((used)) static void
siis_ch_intr_locked(void *data)
{
 device_t dev = (device_t)data;
 struct siis_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 siis_ch_intr(data);
 mtx_unlock(&ch->mtx);
}
