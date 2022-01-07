
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uath_softc {int sc_dev; } ;


 int UATH_CMD_FLAG_ASYNC ;
 int UATH_LOCK (struct uath_softc*) ;
 int UATH_UNLOCK (struct uath_softc*) ;
 int WDCMSG_TARGET_GET_STATS ;
 int device_printf (int ,char*,int) ;
 int uath_cmd_write (struct uath_softc*,int ,int *,int ,int ) ;

__attribute__((used)) static void
uath_stat(void *arg)
{
 struct uath_softc *sc = arg;
 int error;

 UATH_LOCK(sc);




 error = uath_cmd_write(sc, WDCMSG_TARGET_GET_STATS, ((void*)0), 0,
     UATH_CMD_FLAG_ASYNC);
 if (error != 0) {
  device_printf(sc->sc_dev,
      "could not query stats, error %d\n", error);
 }
 UATH_UNLOCK(sc);
}
