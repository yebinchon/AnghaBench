
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_int16_t ;
struct tws_softc {int dummy; } ;


 scalar_t__ tws_get_response (struct tws_softc*,int *,int *) ;

__attribute__((used)) static void
tws_drain_response_queue(struct tws_softc *sc)
{
    u_int16_t req_id;
    u_int64_t mfa;
    while ( tws_get_response(sc, &req_id, &mfa) );
}
