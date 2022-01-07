
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct twe_softc {int dummy; } ;
typedef int TWE_Response_Queue ;


 int TWE_RESPONSE_QUEUE (struct twe_softc*) ;
 int TWE_STATUS (struct twe_softc*) ;
 int TWE_STATUS_RESPONSE_QUEUE_EMPTY ;
 int debug_called (int) ;
 scalar_t__ twe_check_bits (struct twe_softc*,int) ;

__attribute__((used)) static int
twe_drain_response_queue(struct twe_softc *sc)
{
    TWE_Response_Queue rq;
    u_int32_t status_reg;

    debug_called(4);

    for (;;) {
 status_reg = TWE_STATUS(sc);
 if (twe_check_bits(sc, status_reg))
     return(1);
 if (status_reg & TWE_STATUS_RESPONSE_QUEUE_EMPTY)
     return(0);
 rq = TWE_RESPONSE_QUEUE(sc);
    }
}
