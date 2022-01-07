
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ismt_softc {int bus_reserved; } ;
typedef int device_t ;


 int EWOULDBLOCK ;
 int ISMT_DEBUG (int ,char*,...) ;
 int KASSERT (int,char*) ;
 int SMB_EABORT ;


 int atomic_cmpset_ptr (uintptr_t*,uintptr_t,uintptr_t) ;
 int atomic_store_rel_ptr (uintptr_t*,uintptr_t) ;
 int curthread ;
 struct ismt_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ismt_callback(device_t dev, int index, void *data)
{
 struct ismt_softc *sc;
 int acquired, err;

 sc = device_get_softc(dev);

 switch (index) {
 case 128:
  acquired = atomic_cmpset_ptr(
      (uintptr_t *)&sc->bus_reserved,
      (uintptr_t)((void*)0), (uintptr_t)curthread);
  ISMT_DEBUG(dev, "SMB_REQUEST_BUS acquired=%d\n", acquired);
  if (acquired)
   err = 0;
  else
   err = EWOULDBLOCK;
  break;
 case 129:
  KASSERT(sc->bus_reserved == curthread,
      ("SMB_RELEASE_BUS called by wrong thread\n"));
  ISMT_DEBUG(dev, "SMB_RELEASE_BUS\n");
  atomic_store_rel_ptr((uintptr_t *)&sc->bus_reserved,
      (uintptr_t)((void*)0));
  err = 0;
  break;
 default:
  err = SMB_EABORT;
  break;
 }

 return (err);
}
