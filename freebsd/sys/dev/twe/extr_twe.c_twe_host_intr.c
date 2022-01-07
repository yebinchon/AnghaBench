
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int dummy; } ;


 int TWE_CONTROL (struct twe_softc*,int ) ;
 int TWE_CONTROL_CLEAR_HOST_INTERRUPT ;
 int debug_called (int) ;
 int twe_printf (struct twe_softc*,char*) ;

__attribute__((used)) static void
twe_host_intr(struct twe_softc *sc)
{
    debug_called(4);

    twe_printf(sc, "host interrupt\n");
    TWE_CONTROL(sc, TWE_CONTROL_CLEAR_HOST_INTERRUPT);
}
