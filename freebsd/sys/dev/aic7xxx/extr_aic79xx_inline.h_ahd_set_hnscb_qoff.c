
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int HNSCB_QOFF ;
 int ahd_outw_atomic (struct ahd_softc*,int ,int ) ;

__attribute__((used)) static __inline void
ahd_set_hnscb_qoff(struct ahd_softc *ahd, u_int value)
{
 ahd_outw_atomic(ahd, HNSCB_QOFF, value);
}
