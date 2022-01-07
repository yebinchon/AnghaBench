
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psm_softc {int kbdc; } ;


 int LOG_NOTICE ;
 int VLOG (int,int ) ;
 int set_mouse_scaling (int ,int) ;
 int synaptics_preferred_mode (struct psm_softc*) ;
 int synaptics_set_mode (struct psm_softc*,int ) ;

__attribute__((used)) static void
synaptics_passthrough_off(struct psm_softc *sc)
{
 VLOG(2, (LOG_NOTICE, "psm: turning pass-through mode off.\n"));
 set_mouse_scaling(sc->kbdc, 2);
 set_mouse_scaling(sc->kbdc, 1);
 synaptics_set_mode(sc, synaptics_preferred_mode(sc));
}
