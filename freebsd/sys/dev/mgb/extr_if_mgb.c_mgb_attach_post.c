
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgb_softc {int dev; } ;
typedef int if_ctx_t ;


 int device_printf (int ,char*,char*) ;
 struct mgb_softc* iflib_get_softc (int ) ;
 scalar_t__ mgb_intr_test (struct mgb_softc*) ;

__attribute__((used)) static int
mgb_attach_post(if_ctx_t ctx)
{
 struct mgb_softc *sc;

 sc = iflib_get_softc(ctx);

 device_printf(sc->dev, "Interrupt test: %s\n",
     (mgb_intr_test(sc) ? "PASS" : "FAIL"));

 return (0);
}
