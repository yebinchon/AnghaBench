
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct dwc_otg_td {scalar_t__ max_packet_count; } ;
struct dwc_otg_softc {int dummy; } ;


 int dwc_otg_host_channel_free_sub (struct dwc_otg_softc*,struct dwc_otg_td*,scalar_t__) ;

__attribute__((used)) static void
dwc_otg_host_channel_free(struct dwc_otg_softc *sc, struct dwc_otg_td *td)
{
 uint8_t x;
 for (x = 0; x != td->max_packet_count; x++)
  dwc_otg_host_channel_free_sub(sc, td, x);
}
