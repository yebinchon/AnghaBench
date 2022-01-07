
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iop_softc {struct intr_config_hook* iop_delayed_attach; TYPE_1__* reg; } ;
struct intr_config_hook {struct iop_softc* ich_arg; int ich_func; } ;
struct TYPE_2__ {int iqueue; int oqueue_intr_mask; } ;


 int DELAY (int) ;
 int M_NOWAIT ;
 int M_PSTIOP ;
 int M_ZERO ;
 scalar_t__ config_intrhook_establish (struct intr_config_hook*) ;
 int free (struct intr_config_hook*,int ) ;
 int iop_attach ;
 int iop_free_mfa (struct iop_softc*,int) ;
 int iop_init_outqueue (struct iop_softc*) ;
 int iop_reset (struct iop_softc*) ;
 scalar_t__ malloc (int,int ,int) ;
 int printf (char*) ;

int
iop_init(struct iop_softc *sc)
{
    int mfa, timeout = 10000;

    while ((mfa = sc->reg->iqueue) == 0xffffffff && --timeout)
 DELAY(1000);
    if (!timeout) {
 printf("pstiop: no free mfa\n");
 return 0;
    }
    iop_free_mfa(sc, mfa);

    sc->reg->oqueue_intr_mask = 0xffffffff;

    if (!iop_reset(sc)) {
 printf("pstiop: no reset response\n");
 return 0;
    }

    if (!iop_init_outqueue(sc)) {
 printf("pstiop: init outbound queue failed\n");
 return 0;
    }


    if (!(sc->iop_delayed_attach = (struct intr_config_hook *)
       malloc(sizeof(struct intr_config_hook),
       M_PSTIOP, M_NOWAIT | M_ZERO))) {
 printf("pstiop: malloc of delayed attach hook failed\n");
 return 0;
    }
    sc->iop_delayed_attach->ich_func = iop_attach;
    sc->iop_delayed_attach->ich_arg = sc;
    if (config_intrhook_establish(sc->iop_delayed_attach)) {
 printf("pstiop: config_intrhook_establish failed\n");
 free(sc->iop_delayed_attach, M_PSTIOP);
    }
    return 1;
}
