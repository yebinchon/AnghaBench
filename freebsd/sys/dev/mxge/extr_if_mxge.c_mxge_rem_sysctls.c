
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mxge_slice_state {int * sysctl_tree; int sysctl_ctx; } ;
struct TYPE_3__ {int num_slices; int * slice_sysctl_tree; int slice_sysctl_ctx; struct mxge_slice_state* ss; } ;
typedef TYPE_1__ mxge_softc_t ;


 int sysctl_ctx_free (int *) ;

__attribute__((used)) static void
mxge_rem_sysctls(mxge_softc_t *sc)
{
 struct mxge_slice_state *ss;
 int slice;

 if (sc->slice_sysctl_tree == ((void*)0))
  return;

 for (slice = 0; slice < sc->num_slices; slice++) {
  ss = &sc->ss[slice];
  if (ss == ((void*)0) || ss->sysctl_tree == ((void*)0))
   continue;
  sysctl_ctx_free(&ss->sysctl_ctx);
  ss->sysctl_tree = ((void*)0);
 }
 sysctl_ctx_free(&sc->slice_sysctl_ctx);
 sc->slice_sysctl_tree = ((void*)0);
}
