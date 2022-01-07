
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int dummy; } ;


 int TWE_CONTROL (struct twe_softc*,int ) ;
 int TWE_CONTROL_MASK_COMMAND_INTERRUPT ;
 int debug_called (int) ;

__attribute__((used)) static void
twe_command_intr(struct twe_softc *sc)
{
    debug_called(4);






    TWE_CONTROL(sc, TWE_CONTROL_MASK_COMMAND_INTERRUPT);
}
