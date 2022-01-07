
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int AHD_ASSERT_MODES (struct ahd_softc*,int ,int ) ;
 int AHD_MODE_CCHAN_MSK ;
 int SESCB_QOFF ;
 int ahd_inb (struct ahd_softc*,int ) ;

__attribute__((used)) static __inline u_int
ahd_get_sescb_qoff(struct ahd_softc *ahd)
{
 AHD_ASSERT_MODES(ahd, AHD_MODE_CCHAN_MSK, AHD_MODE_CCHAN_MSK);
 return (ahd_inb(ahd, SESCB_QOFF));
}
