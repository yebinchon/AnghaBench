
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvs_intr_arg {int arg; } ;
struct mvs_channel {int mtx; } ;
typedef int device_t ;


 struct mvs_channel* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int mvs_ch_intr (void*) ;

__attribute__((used)) static void
mvs_ch_intr_locked(void *data)
{
 struct mvs_intr_arg *arg = (struct mvs_intr_arg *)data;
 device_t dev = (device_t)arg->arg;
 struct mvs_channel *ch = device_get_softc(dev);

 mtx_lock(&ch->mtx);
 mvs_ch_intr(data);
 mtx_unlock(&ch->mtx);
}
