
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int dummy; } ;


 int TWE_CONTROL (struct twe_softc*,int ) ;
 int TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT ;
 int debug_called (int) ;
 scalar_t__ twe_fetch_aen (struct twe_softc*) ;
 int twe_printf (struct twe_softc*,char*) ;

__attribute__((used)) static void
twe_attention_intr(struct twe_softc *sc)
{
    debug_called(4);


    if (twe_fetch_aen(sc)) {
 twe_printf(sc, "error polling for signalled AEN\n");
    } else {
 TWE_CONTROL(sc, TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT);
    }
}
