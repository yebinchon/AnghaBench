
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {int debug; int dev; } ;
typedef int buf ;


 int DBG_PHY ;
 scalar_t__ __predict_false (int) ;
 int device_printf (int ,char*,char*) ;
 int snprintf (char*,int,char*,char*) ;

void
elink_cb_dbg(struct bxe_softc *sc,
             char *fmt)
{
    char buf[128];
    if (__predict_false(sc->debug & DBG_PHY)) {
        snprintf(buf, sizeof(buf), "ELINK: %s", fmt);
        device_printf(sc->dev, "%s", buf);
    }
}
