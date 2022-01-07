
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scb {int dummy; } ;
struct ahd_softc {int dummy; } ;


 int CFG4DATA ;
 int INVALID_ADDR ;
 scalar_t__ LONGJMP_ADDR ;
 int SAVEPTRS ;
 scalar_t__ SCB_GET_TAG (struct scb*) ;
 scalar_t__ SEQINTSRC ;
 scalar_t__ ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_inb (struct ahd_softc*,scalar_t__) ;

__attribute__((used)) static int
ahd_scb_active_in_fifo(struct ahd_softc *ahd, struct scb *scb)
{







 if (ahd_get_scbptr(ahd) != SCB_GET_TAG(scb)
  || ((ahd_inb(ahd, LONGJMP_ADDR+1) & INVALID_ADDR) != 0
   && (ahd_inb(ahd, SEQINTSRC) & (CFG4DATA|SAVEPTRS)) == 0))
  return (0);

 return (1);
}
