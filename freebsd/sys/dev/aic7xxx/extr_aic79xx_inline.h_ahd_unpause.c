
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {scalar_t__ saved_src_mode; scalar_t__ saved_dst_mode; int flags; int unpause; } ;


 scalar_t__ AHD_MODE_UNKNOWN ;
 int AHD_UPDATE_PEND_CMDS ;
 int CMDCMPLT ;
 int HCNTRL ;
 int INTSTAT ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_known_modes (struct ahd_softc*,scalar_t__,scalar_t__) ;
 int ahd_outb (struct ahd_softc*,int ,int ) ;
 int ahd_reset_cmds_pending (struct ahd_softc*) ;
 int ahd_set_modes (struct ahd_softc*,scalar_t__,scalar_t__) ;

__attribute__((used)) static __inline void
ahd_unpause(struct ahd_softc *ahd)
{




 if (ahd->saved_src_mode != AHD_MODE_UNKNOWN
  && ahd->saved_dst_mode != AHD_MODE_UNKNOWN) {
  if ((ahd->flags & AHD_UPDATE_PEND_CMDS) != 0)
   ahd_reset_cmds_pending(ahd);
  ahd_set_modes(ahd, ahd->saved_src_mode, ahd->saved_dst_mode);
 }

 if ((ahd_inb(ahd, INTSTAT) & ~CMDCMPLT) == 0)
  ahd_outb(ahd, HCNTRL, ahd->unpause);

 ahd_known_modes(ahd, AHD_MODE_UNKNOWN, AHD_MODE_UNKNOWN);
}
