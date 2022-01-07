
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahd_softc {scalar_t__ qinfifonext; int qinfifo; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_CCHAN_MSK ;
 scalar_t__ AHD_QIN_WRAP (scalar_t__) ;
 scalar_t__ NUM_ELEMENTS (int ) ;
 scalar_t__ ahd_get_snscb_qoff (struct ahd_softc*) ;

__attribute__((used)) static int
ahd_qinfifo_count(struct ahd_softc *ahd)
{
 u_int qinpos;
 u_int wrap_qinpos;
 u_int wrap_qinfifonext;

 AHD_ASSERT_MODES(ahd, AHD_MODE_CCHAN_MSK, AHD_MODE_CCHAN_MSK);
 qinpos = ahd_get_snscb_qoff(ahd);
 wrap_qinpos = AHD_QIN_WRAP(qinpos);
 wrap_qinfifonext = AHD_QIN_WRAP(ahd->qinfifonext);
 if (wrap_qinfifonext >= wrap_qinpos)
  return (wrap_qinfifonext - wrap_qinpos);
 else
  return (wrap_qinfifonext
        + NUM_ELEMENTS(ahd->qinfifo) - wrap_qinpos);
}
