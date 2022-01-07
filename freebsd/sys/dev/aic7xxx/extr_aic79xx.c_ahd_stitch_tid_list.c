
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 scalar_t__ SCBID_IS_NULL (int ) ;
 int SCB_NEXT2 ;
 int WAITING_TID_HEAD ;
 int WAITING_TID_TAIL ;
 int ahd_outw (struct ahd_softc*,int ,int ) ;
 int ahd_set_scbptr (struct ahd_softc*,int ) ;

__attribute__((used)) static void
ahd_stitch_tid_list(struct ahd_softc *ahd, u_int tid_prev,
      u_int tid_cur, u_int tid_next)
{
 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);

 if (SCBID_IS_NULL(tid_cur)) {


  if (SCBID_IS_NULL(tid_prev)) {
   ahd_outw(ahd, WAITING_TID_HEAD, tid_next);
  } else {
   ahd_set_scbptr(ahd, tid_prev);
   ahd_outw(ahd, SCB_NEXT2, tid_next);
  }
  if (SCBID_IS_NULL(tid_next))
   ahd_outw(ahd, WAITING_TID_TAIL, tid_prev);
 } else {


  if (SCBID_IS_NULL(tid_prev)) {
   ahd_outw(ahd, WAITING_TID_HEAD, tid_cur);
  } else {
   ahd_set_scbptr(ahd, tid_prev);
   ahd_outw(ahd, SCB_NEXT2, tid_cur);
  }
  ahd_set_scbptr(ahd, tid_cur);
  ahd_outw(ahd, SCB_NEXT2, tid_next);

  if (SCBID_IS_NULL(tid_next))
   ahd_outw(ahd, WAITING_TID_TAIL, tid_cur);
 }
}
