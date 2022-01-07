
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* mtkswitch_read ) (struct mtkswitch_softc*,int ) ;int (* mtkswitch_write ) (struct mtkswitch_softc*,int ,int) ;} ;
struct mtkswitch_softc {TYPE_1__ hal; } ;


 int ATC_AC_CMD_CLEAN ;
 int ATC_AC_MAT_NON_STATIC_MACS ;
 int ATC_BUSY ;
 int MA_OWNED ;
 int MTKSWITCH_ATC ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int stub1 (struct mtkswitch_softc*,int ) ;
 int stub2 (struct mtkswitch_softc*,int ,int) ;
 int stub3 (struct mtkswitch_softc*,int ) ;

__attribute__((used)) static int
mtkswitch_atu_flush(struct mtkswitch_softc *sc)
{

 MTKSWITCH_LOCK_ASSERT(sc, MA_OWNED);


 while (sc->hal.mtkswitch_read(sc, MTKSWITCH_ATC) & ATC_BUSY);
 sc->hal.mtkswitch_write(sc, MTKSWITCH_ATC, ATC_BUSY |
     ATC_AC_MAT_NON_STATIC_MACS | ATC_AC_CMD_CLEAN);
 while (sc->hal.mtkswitch_read(sc, MTKSWITCH_ATC) & ATC_BUSY);

 return (0);
}
