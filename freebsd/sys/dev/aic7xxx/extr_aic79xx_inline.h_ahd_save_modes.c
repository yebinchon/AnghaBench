
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {scalar_t__ src_mode; scalar_t__ dst_mode; } ;
typedef int ahd_mode_state ;


 scalar_t__ AHD_MODE_UNKNOWN ;
 int ahd_build_mode_state (struct ahd_softc*,scalar_t__,scalar_t__) ;
 int ahd_update_modes (struct ahd_softc*) ;

__attribute__((used)) static __inline ahd_mode_state
ahd_save_modes(struct ahd_softc *ahd)
{
 if (ahd->src_mode == AHD_MODE_UNKNOWN
  || ahd->dst_mode == AHD_MODE_UNKNOWN)
  ahd_update_modes(ahd);

 return (ahd_build_mode_state(ahd, ahd->src_mode, ahd->dst_mode));
}
