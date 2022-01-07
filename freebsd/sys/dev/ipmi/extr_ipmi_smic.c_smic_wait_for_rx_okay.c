
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;


 int INB (struct ipmi_softc*,int ) ;
 int SMIC_FLAGS ;
 int SMIC_STATUS_RX_RDY ;

__attribute__((used)) static void
smic_wait_for_rx_okay(struct ipmi_softc *sc)
{
 int flags;

 do {
  flags = INB(sc, SMIC_FLAGS);
 } while (!(flags & SMIC_STATUS_RX_RDY));
}
