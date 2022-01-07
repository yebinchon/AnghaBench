
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int,int) ;
 int AHD_MODE_CFG_MSK ;
 int AHD_MODE_UNKNOWN_MSK ;
 scalar_t__ SCBPTR ;
 int ahd_outb (struct ahd_softc*,scalar_t__,int) ;

__attribute__((used)) static __inline void
ahd_set_scbptr(struct ahd_softc *ahd, u_int scbptr)
{
 AHD_ASSERT_MODES(ahd, ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK),
    ~(AHD_MODE_UNKNOWN_MSK|AHD_MODE_CFG_MSK));
 ahd_outb(ahd, SCBPTR, scbptr & 0xFF);
 ahd_outb(ahd, SCBPTR+1, (scbptr >> 8) & 0xFF);
}
