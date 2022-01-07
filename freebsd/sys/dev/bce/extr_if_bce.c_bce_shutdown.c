
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bce_softc {int bce_flags; } ;
typedef int device_t ;


 int BCE_DRV_MSG_CODE_UNLOAD ;
 int BCE_DRV_MSG_CODE_UNLOAD_LNK_DN ;
 int BCE_LOCK (struct bce_softc*) ;
 int BCE_NO_WOL_FLAG ;
 int BCE_UNLOCK (struct bce_softc*) ;
 int BCE_VERBOSE ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int bce_reset (struct bce_softc*,int ) ;
 int bce_stop (struct bce_softc*) ;
 struct bce_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bce_shutdown(device_t dev)
{
 struct bce_softc *sc = device_get_softc(dev);
 u32 msg;

 DBENTER(BCE_VERBOSE);

 BCE_LOCK(sc);
 bce_stop(sc);
 if (sc->bce_flags & BCE_NO_WOL_FLAG)
  msg = BCE_DRV_MSG_CODE_UNLOAD_LNK_DN;
 else
  msg = BCE_DRV_MSG_CODE_UNLOAD;
 bce_reset(sc, msg);
 BCE_UNLOCK(sc);

 DBEXIT(BCE_VERBOSE);

 return (0);
}
