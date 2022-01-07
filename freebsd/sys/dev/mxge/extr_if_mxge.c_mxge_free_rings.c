
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_slices; int * ss; } ;
typedef TYPE_1__ mxge_softc_t ;


 int mxge_free_slice_rings (int *) ;

__attribute__((used)) static void
mxge_free_rings(mxge_softc_t *sc)
{
 int slice;

 for (slice = 0; slice < sc->num_slices; slice++)
  mxge_free_slice_rings(&sc->ss[slice]);
}
