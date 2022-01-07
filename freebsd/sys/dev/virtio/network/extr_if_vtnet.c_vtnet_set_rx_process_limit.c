
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_rx_process_limit; } ;


 int INT_MAX ;
 int vtnet_rx_process_limit ;
 int vtnet_tunable_int (struct vtnet_softc*,char*,int ) ;

__attribute__((used)) static void
vtnet_set_rx_process_limit(struct vtnet_softc *sc)
{
 int limit;

 limit = vtnet_tunable_int(sc, "rx_process_limit",
     vtnet_rx_process_limit);
 if (limit < 0)
  limit = INT_MAX;
 sc->vtnet_rx_process_limit = limit;
}
