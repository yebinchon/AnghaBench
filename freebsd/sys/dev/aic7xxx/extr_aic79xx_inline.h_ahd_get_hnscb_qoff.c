
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int HNSCB_QOFF ;
 int ahd_inw_atomic (struct ahd_softc*,int ) ;

__attribute__((used)) static __inline u_int
ahd_get_hnscb_qoff(struct ahd_softc *ahd)
{
 return (ahd_inw_atomic(ahd, HNSCB_QOFF));
}
