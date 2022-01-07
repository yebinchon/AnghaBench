
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ status_high_speed; } ;
struct dwc_otg_softc {TYPE_1__ sc_flags; } ;


 int DOTG_HFIR ;
 int DPRINTF (char*,int) ;
 int DWC_OTG_READ_4 (struct dwc_otg_softc*,int ) ;
 int DWC_OTG_WRITE_4 (struct dwc_otg_softc*,int ,int) ;
 int HFIR_FRINT_MASK ;

__attribute__((used)) static void
dwc_otg_update_host_frame_interval(struct dwc_otg_softc *sc)
{
}
