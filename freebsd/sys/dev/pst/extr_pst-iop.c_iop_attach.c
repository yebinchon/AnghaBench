
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iop_softc {int ism; TYPE_1__* reg; int handle; int r_irq; int dev; TYPE_2__* lct; int * iop_delayed_attach; } ;
struct i2o_get_param_reply {scalar_t__ result; } ;
struct i2o_device_identity {char* vendor; char* product; char* description; char* revision; } ;
struct TYPE_4__ {scalar_t__ entry_size; int class; int sub_class; int local_tid; int user_tid; int parent_tid; } ;
struct TYPE_3__ {int oqueue_intr_mask; } ;




 scalar_t__ I2O_LCT_ENTRYSIZE ;
 int I2O_PARAMS_OPERATION_FIELD_GET ;
 int I2O_SUBCLASS_ISM ;
 int I2O_TID_HOST ;
 int I2O_TID_NONE ;
 int I2O_UTIL_DEVICE_IDENTITY_GROUP_NO ;
 int INTR_ENTROPY ;
 int INTR_MPSAFE ;
 int INTR_TYPE_BIO ;
 int M_PSTIOP ;
 int PAGE_SIZE ;
 int bus_setup_intr (int ,int ,int,int *,int ,struct iop_softc*,int *) ;
 int config_intrhook_disestablish (int *) ;
 int contigfree (struct i2o_get_param_reply*,int ,int ) ;
 int free (int *,int ) ;
 int iop_get_lct (struct iop_softc*) ;
 struct i2o_get_param_reply* iop_get_util_params (struct iop_softc*,int,int ,int ) ;
 int iop_intr ;
 int printf (char*,...) ;
 int pst_add_raid (struct iop_softc*,TYPE_2__*) ;

void
iop_attach(void *arg)
{
    struct iop_softc *sc;
    int i;

    sc = arg;
    if (sc->iop_delayed_attach) {
 config_intrhook_disestablish(sc->iop_delayed_attach);
 free(sc->iop_delayed_attach, M_PSTIOP);
 sc->iop_delayed_attach = ((void*)0);
    }

    if (!iop_get_lct(sc)) {
 printf("pstiop: get LCT failed\n");
 return;
    }


    for (i = 0; sc->lct[i].entry_size == I2O_LCT_ENTRYSIZE; i++) {
 if (sc->lct[i].user_tid != I2O_TID_NONE &&
     sc->lct[i].user_tid != I2O_TID_HOST)
     continue;

 switch (sc->lct[i].class) {
 case 129:
     if (sc->lct[i].sub_class == I2O_SUBCLASS_ISM)
  sc->ism = sc->lct[i].local_tid;
     break;

 case 128:
     pst_add_raid(sc, &sc->lct[i]);
     break;
 }
    }


    bus_setup_intr(sc->dev, sc->r_irq, INTR_TYPE_BIO|INTR_ENTROPY|INTR_MPSAFE,
     ((void*)0), iop_intr, sc, &sc->handle);
    sc->reg->oqueue_intr_mask = 0x0;
}
