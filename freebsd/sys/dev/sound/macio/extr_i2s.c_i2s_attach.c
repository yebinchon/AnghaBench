
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct resource {int dummy; } ;
struct intr_config_hook {int dummy; } ;
struct TYPE_4__ {int * sc_odma; int sc_dev; } ;
struct i2s_softc {int node; int soundnode; TYPE_1__ aoa; int * reg; int port_mtx; } ;
typedef int phandle_t ;
typedef int device_t ;
struct TYPE_5__ {struct i2s_softc* ich_arg; int ich_func; } ;


 int ENOMEM ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_POLARITY_LOW ;
 int INTR_TRIGGER_EDGE ;
 int MTX_DEF ;
 int M_DEVBUF ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int aoa_attach (struct i2s_softc*) ;
 int aoa_interrupt ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 scalar_t__ config_intrhook_establish (TYPE_2__*) ;
 TYPE_2__* i2s_delayed_attach ;
 int i2s_postattach ;
 int i2s_setup (struct i2s_softc*,int,int,int) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 void* of_find_firstchild_byname (int,char*) ;
 int ofw_bus_get_node (int ) ;
 int powerpc_config_intr (int,int ,int ) ;
 int rman_get_start (struct resource*) ;
 int snd_setup_intr (int ,struct resource*,int ,int ,struct i2s_softc*,void**) ;

__attribute__((used)) static int
i2s_attach(device_t self)
{
 struct i2s_softc *sc;
 struct resource *dbdma_irq;
 void *dbdma_ih;
 int rid, oirq, err;
 phandle_t port;

 sc = malloc(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);

 sc->aoa.sc_dev = self;
 sc->node = ofw_bus_get_node(self);

 port = of_find_firstchild_byname(sc->node, "i2s-a");
 if (port == -1)
  return (ENXIO);
 sc->soundnode = of_find_firstchild_byname(port, "sound");
 if (sc->soundnode == -1)
  return (ENXIO);

 mtx_init(&sc->port_mtx, "port_mtx", ((void*)0), MTX_DEF);


 rid = 0;
 sc->reg = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (sc->reg == ((void*)0))
  return ENXIO;


 rid = 1;
 sc->aoa.sc_odma = bus_alloc_resource_any(self, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (sc->aoa.sc_odma == ((void*)0))
  return ENXIO;


 rid = 1;
 dbdma_irq = bus_alloc_resource_any(self, SYS_RES_IRQ,
     &rid, RF_SHAREABLE | RF_ACTIVE);
 if (dbdma_irq == ((void*)0))
  return (ENXIO);


 err = i2s_setup(sc, 44100, 16, 64);
 if (err != 0)
  return (err);

 snd_setup_intr(self, dbdma_irq, INTR_MPSAFE, aoa_interrupt,
     sc, &dbdma_ih);

 oirq = rman_get_start(dbdma_irq);
 err = powerpc_config_intr(oirq, INTR_TRIGGER_EDGE, INTR_POLARITY_LOW);
 if (err != 0)
  return (err);





 if ((i2s_delayed_attach = malloc(sizeof(struct intr_config_hook),
     M_TEMP, M_WAITOK | M_ZERO)) == ((void*)0))
  return (ENOMEM);

 i2s_delayed_attach->ich_func = i2s_postattach;
 i2s_delayed_attach->ich_arg = sc;

 if (config_intrhook_establish(i2s_delayed_attach) != 0)
  return (ENOMEM);

 return (aoa_attach(sc));
}
