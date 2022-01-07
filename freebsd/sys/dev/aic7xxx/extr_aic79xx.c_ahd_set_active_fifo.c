
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 int CURRFIFO ;
 int DFFSTAT ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_set_modes (struct ahd_softc*,int,int) ;

__attribute__((used)) static __inline int
ahd_set_active_fifo(struct ahd_softc *ahd)
{
 u_int active_fifo;

 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
 active_fifo = ahd_inb(ahd, DFFSTAT) & CURRFIFO;
 switch (active_fifo) {
 case 0:
 case 1:
  ahd_set_modes(ahd, active_fifo, active_fifo);
  return (1);
 default:
  return (0);
 }
}
