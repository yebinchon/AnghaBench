
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct twe_softc {int dummy; } ;


 int TWE_AEN_SOFT_RESET ;
 int TWE_CONTROL (struct twe_softc*,int ) ;
 int TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT ;
 int TWE_IO_ASSERT_LOCKED (struct twe_softc*) ;
 int TWE_SOFT_RESET (struct twe_softc*) ;
 int TWE_STATUS (struct twe_softc*) ;
 int TWE_STATUS_ATTENTION_INTERRUPT ;
 scalar_t__ TWE_STATUS_ERRORS (int ) ;
 int debug_called (int) ;
 scalar_t__ twe_check_bits (struct twe_softc*,int ) ;
 scalar_t__ twe_drain_aen_queue (struct twe_softc*) ;
 scalar_t__ twe_drain_response_queue (struct twe_softc*) ;
 scalar_t__ twe_find_aen (struct twe_softc*,int ) ;
 int twe_printf (struct twe_softc*,char*) ;
 scalar_t__ twe_wait_status (struct twe_softc*,int ,int) ;

__attribute__((used)) static int
twe_soft_reset(struct twe_softc *sc)
{
    u_int32_t status_reg;

    debug_called(2);

    TWE_IO_ASSERT_LOCKED(sc);
    TWE_SOFT_RESET(sc);

    if (twe_wait_status(sc, TWE_STATUS_ATTENTION_INTERRUPT, 30)) {
 twe_printf(sc, "no attention interrupt\n");
 return(1);
    }
    TWE_CONTROL(sc, TWE_CONTROL_CLEAR_ATTENTION_INTERRUPT);
    if (twe_drain_aen_queue(sc)) {
 twe_printf(sc, "can't drain AEN queue\n");
 return(1);
    }
    if (twe_find_aen(sc, TWE_AEN_SOFT_RESET)) {
 twe_printf(sc, "reset not reported\n");
 return(1);
    }
    status_reg = TWE_STATUS(sc);
    if (TWE_STATUS_ERRORS(status_reg) || twe_check_bits(sc, status_reg)) {
 twe_printf(sc, "controller errors detected\n");
 return(1);
    }
    if (twe_drain_response_queue(sc)) {
 twe_printf(sc, "can't drain response queue\n");
 return(1);
    }
    return(0);
}
