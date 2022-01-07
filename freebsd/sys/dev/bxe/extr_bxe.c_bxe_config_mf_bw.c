
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_up; } ;
struct bxe_softc {int cmng; TYPE_1__ link_vars; } ;


 int CMNG_FNS_MINMAX ;
 int SC_PORT (struct bxe_softc*) ;
 int TRUE ;
 int bxe_cmng_fns_init (struct bxe_softc*,int ,int ) ;
 int storm_memset_cmng (struct bxe_softc*,int *,int ) ;

__attribute__((used)) static void
bxe_config_mf_bw(struct bxe_softc *sc)
{
    if (sc->link_vars.link_up) {
        bxe_cmng_fns_init(sc, TRUE, CMNG_FNS_MINMAX);

    }

    storm_memset_cmng(sc, &sc->cmng, SC_PORT(sc));
}
