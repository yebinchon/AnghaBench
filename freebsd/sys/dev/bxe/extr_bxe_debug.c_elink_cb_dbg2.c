
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int tmp ;
struct bxe_softc {int debug; int dev; } ;
typedef int buf ;


 int DBG_PHY ;
 scalar_t__ __predict_false (int) ;
 int device_printf (int ,char*,char*) ;
 int snprintf (char*,int,char*,char*,...) ;

void
elink_cb_dbg2(struct bxe_softc *sc,
              char *fmt,
              uint32_t arg1,
              uint32_t arg2)
{
    char tmp[128], buf[128];
    if (__predict_false(sc->debug & DBG_PHY)) {
        snprintf(tmp, sizeof(tmp), "ELINK: %s", fmt);
        snprintf(buf, sizeof(buf), tmp, arg1, arg2);
        device_printf(sc->dev, "%s", buf);
    }
}
