
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_softc {int dummy; } ;


 scalar_t__ DC_IS_ADMTEK (struct dc_softc*) ;
 scalar_t__ DC_IS_ASIX (struct dc_softc*) ;
 scalar_t__ DC_IS_CONEXANT (struct dc_softc*) ;
 scalar_t__ DC_IS_DAVICOM (struct dc_softc*) ;
 scalar_t__ DC_IS_INTEL (struct dc_softc*) ;
 scalar_t__ DC_IS_MACRONIX (struct dc_softc*) ;
 scalar_t__ DC_IS_PNIC (struct dc_softc*) ;
 scalar_t__ DC_IS_PNICII (struct dc_softc*) ;
 scalar_t__ DC_IS_ULI (struct dc_softc*) ;
 scalar_t__ DC_IS_XIRCOM (struct dc_softc*) ;
 int dc_setfilt_21143 (struct dc_softc*) ;
 int dc_setfilt_admtek (struct dc_softc*) ;
 int dc_setfilt_asix (struct dc_softc*) ;
 int dc_setfilt_uli (struct dc_softc*) ;
 int dc_setfilt_xircom (struct dc_softc*) ;

__attribute__((used)) static void
dc_setfilt(struct dc_softc *sc)
{

 if (DC_IS_INTEL(sc) || DC_IS_MACRONIX(sc) || DC_IS_PNIC(sc) ||
     DC_IS_PNICII(sc) || DC_IS_DAVICOM(sc) || DC_IS_CONEXANT(sc))
  dc_setfilt_21143(sc);

 if (DC_IS_ASIX(sc))
  dc_setfilt_asix(sc);

 if (DC_IS_ADMTEK(sc))
  dc_setfilt_admtek(sc);

 if (DC_IS_ULI(sc))
  dc_setfilt_uli(sc);

 if (DC_IS_XIRCOM(sc))
  dc_setfilt_xircom(sc);
}
