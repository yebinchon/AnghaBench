
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dummy; } ;


 int DELAY (int ) ;

void
elink_cb_udelay(struct bxe_softc *sc,
                uint32_t usecs)
{
    DELAY(usecs);
}
