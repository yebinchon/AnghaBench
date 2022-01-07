
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int ahd_index_busy_tcl (struct ahd_softc*,int *,int ) ;
 int ahd_inw_scbram (struct ahd_softc*,int ) ;
 int ahd_set_scbptr (struct ahd_softc*,int ) ;

u_int
ahd_find_busy_tcl(struct ahd_softc *ahd, u_int tcl)
{
 u_int scbid;
 u_int scb_offset;
 u_int saved_scbptr;

 scb_offset = ahd_index_busy_tcl(ahd, &saved_scbptr, tcl);
 scbid = ahd_inw_scbram(ahd, scb_offset);
 ahd_set_scbptr(ahd, saved_scbptr);
 return (scbid);
}
