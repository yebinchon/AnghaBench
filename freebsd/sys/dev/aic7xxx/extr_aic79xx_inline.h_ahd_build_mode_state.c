
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int dummy; } ;
typedef int ahd_mode_state ;
typedef int ahd_mode ;


 int DST_MODE_SHIFT ;
 int SRC_MODE_SHIFT ;

__attribute__((used)) static __inline ahd_mode_state
ahd_build_mode_state(struct ahd_softc *ahd, ahd_mode src, ahd_mode dst)
{
 return ((src << SRC_MODE_SHIFT) | (dst << DST_MODE_SHIFT));
}
