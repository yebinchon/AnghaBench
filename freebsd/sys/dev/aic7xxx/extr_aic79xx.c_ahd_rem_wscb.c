
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 scalar_t__ SCBID_IS_NULL (int) ;
 int SCB_NEXT ;
 int WAITING_SCB_TAILS ;
 int ahd_add_scb_to_free_list (struct ahd_softc*,int) ;
 int ahd_inw (struct ahd_softc*,int) ;
 int ahd_outw (struct ahd_softc*,int,int) ;
 int ahd_set_scbptr (struct ahd_softc*,int) ;

__attribute__((used)) static u_int
ahd_rem_wscb(struct ahd_softc *ahd, u_int scbid,
      u_int prev, u_int next, u_int tid)
{
 u_int tail_offset;

 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
 if (!SCBID_IS_NULL(prev)) {
  ahd_set_scbptr(ahd, prev);
  ahd_outw(ahd, SCB_NEXT, next);
 }
 tail_offset = WAITING_SCB_TAILS + (2 * tid);
 if (SCBID_IS_NULL(next)
  && ahd_inw(ahd, tail_offset) == scbid)
  ahd_outw(ahd, tail_offset, prev);

 ahd_add_scb_to_free_list(ahd, scbid);
 return (next);
}
