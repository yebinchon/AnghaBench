
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct ioat_softc {int dmaengine; int submit_lock; scalar_t__ destroying; scalar_t__ quiescing; } ;
typedef int * bus_dmaengine_t ;


 int KASSERT (int,char*) ;
 int M_NOWAIT ;
 int M_WAITOK ;
 struct ioat_softc** ioat_channel ;
 size_t ioat_channel_index ;
 int ioat_get (struct ioat_softc*) ;
 int ioat_list_mtx ;
 int ioat_put (struct ioat_softc*) ;
 int msleep (scalar_t__*,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

bus_dmaengine_t
ioat_get_dmaengine(uint32_t index, int flags)
{
 struct ioat_softc *ioat;

 KASSERT((flags & ~(M_NOWAIT | M_WAITOK)) == 0,
     ("invalid flags: 0x%08x", flags));
 KASSERT((flags & (M_NOWAIT | M_WAITOK)) != (M_NOWAIT | M_WAITOK),
     ("invalid wait | nowait"));

 mtx_lock(&ioat_list_mtx);
 if (index >= ioat_channel_index ||
     (ioat = ioat_channel[index]) == ((void*)0)) {
  mtx_unlock(&ioat_list_mtx);
  return (((void*)0));
 }
 mtx_lock(&ioat->submit_lock);
 mtx_unlock(&ioat_list_mtx);

 if (ioat->destroying) {
  mtx_unlock(&ioat->submit_lock);
  return (((void*)0));
 }

 ioat_get(ioat);
 if (ioat->quiescing) {
  if ((flags & M_NOWAIT) != 0) {
   ioat_put(ioat);
   mtx_unlock(&ioat->submit_lock);
   return (((void*)0));
  }

  while (ioat->quiescing && !ioat->destroying)
   msleep(&ioat->quiescing, &ioat->submit_lock, 0, "getdma", 0);

  if (ioat->destroying) {
   ioat_put(ioat);
   mtx_unlock(&ioat->submit_lock);
   return (((void*)0));
  }
 }
 mtx_unlock(&ioat->submit_lock);
 return (&ioat->dmaengine);
}
