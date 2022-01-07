
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_SCSI_MSK ;
 scalar_t__ SCB_DISCONNECTED_LISTS ;
 int TCL_LUN (scalar_t__) ;
 int TCL_TARGET_OFFSET (scalar_t__) ;
 scalar_t__ ahd_get_scbptr (struct ahd_softc*) ;
 int ahd_set_scbptr (struct ahd_softc*,int) ;

__attribute__((used)) static __inline u_int
ahd_index_busy_tcl(struct ahd_softc *ahd, u_int *saved_scbid, u_int tcl)
{



 AHD_ASSERT_MODES(ahd, AHD_MODE_SCSI_MSK, AHD_MODE_SCSI_MSK);
 *saved_scbid = ahd_get_scbptr(ahd);
 ahd_set_scbptr(ahd, TCL_LUN(tcl)
       | ((TCL_TARGET_OFFSET(tcl) & 0xC) << 4));






 return (((TCL_TARGET_OFFSET(tcl) & 0x3) << 1) + SCB_DISCONNECTED_LISTS);
}
