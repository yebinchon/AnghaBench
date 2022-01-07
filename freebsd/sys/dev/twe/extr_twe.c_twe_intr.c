
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct twe_softc {int dummy; } ;


 int TWE_STATUS (struct twe_softc*) ;
 int TWE_STATUS_ATTENTION_INTERRUPT ;
 int TWE_STATUS_COMMAND_INTERRUPT ;
 int TWE_STATUS_HOST_INTERRUPT ;
 int TWE_STATUS_RESPONSE_INTERRUPT ;
 int debug_called (int) ;
 int twe_attention_intr (struct twe_softc*) ;
 int twe_check_bits (struct twe_softc*,int) ;
 int twe_command_intr (struct twe_softc*) ;
 int twe_done (struct twe_softc*,int) ;
 int twe_host_intr (struct twe_softc*) ;

void
twe_intr(struct twe_softc *sc)
{
    u_int32_t status_reg;

    debug_called(4);




    status_reg = TWE_STATUS(sc);
    twe_check_bits(sc, status_reg);




    if (status_reg & TWE_STATUS_HOST_INTERRUPT)
 twe_host_intr(sc);
    if (status_reg & TWE_STATUS_ATTENTION_INTERRUPT)
 twe_attention_intr(sc);
    if (status_reg & TWE_STATUS_COMMAND_INTERRUPT)
 twe_command_intr(sc);
    if (status_reg & TWE_STATUS_RESPONSE_INTERRUPT)
 twe_done(sc, 1);
}
