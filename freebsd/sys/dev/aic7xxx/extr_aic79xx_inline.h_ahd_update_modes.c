
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;
typedef int ahd_mode_state ;
typedef int ahd_mode ;


 int AHD_SHOW_MODEPTR ;
 int MODE_PTR ;
 int ahd_debug ;
 int ahd_extract_mode_state (struct ahd_softc*,int,int *,int *) ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_known_modes (struct ahd_softc*,int ,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static __inline void
ahd_update_modes(struct ahd_softc *ahd)
{
 ahd_mode_state mode_ptr;
 ahd_mode src;
 ahd_mode dst;

 mode_ptr = ahd_inb(ahd, MODE_PTR);




 ahd_extract_mode_state(ahd, mode_ptr, &src, &dst);
 ahd_known_modes(ahd, src, dst);
}
