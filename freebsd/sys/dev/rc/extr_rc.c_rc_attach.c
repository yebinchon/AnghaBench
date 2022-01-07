
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tty {int t_stop; int t_close; int t_break; int t_modem; int t_param; int t_oproc; struct rc_chans* t_sc; } ;
struct rc_softc {int sc_unit; int sc_swicookie; int sc_hwicookie; int * sc_irq; struct rc_chans* sc_channels; int sc_irqrid; int ** sc_port; int sc_bh; int sc_bt; int sc_dev; } ;
struct rc_chans {int rc_chan; struct tty* rc_tp; int rc_dtrcallout; int rc_obuf; int rc_obufend; int rc_optr; int * rc_ibuf; int * rc_hiwat; int * rc_bufend; int * rc_iptr; struct rc_softc* rc_rcb; } ;
typedef int device_t ;


 int CD180_GFRCR ;
 int CD180_NCHAN ;
 int CD180_PPRH ;
 int CD180_PPRL ;
 int ENOMEM ;
 int ENXIO ;
 int INTR_TYPE_TTY ;
 int IOBASE_ADDRS ;
 size_t RC_IBUFSIZE ;
 size_t RC_IHIGHWATER ;
 int RF_ACTIVE ;
 int SWI_TTY ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TS_CALLOUT ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int,int ) ;
 scalar_t__ bus_set_resource (int ,int ,int,int,int) ;
 int bus_setup_intr (int ,int *,int ,int *,int ,struct rc_softc*,int *) ;
 int callout_init (int *,int ) ;
 struct rc_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int* iobase_addrs ;
 int isa_get_port (int ) ;
 int rc_break ;
 int rc_close ;
 int rc_intr ;
 int rc_modem ;
 int rc_param ;
 int rc_pollcard ;
 int rc_release_resources (int ) ;
 int rc_start ;
 int rc_stop ;
 scalar_t__ rc_test (struct rc_softc*) ;
 int rcin (struct rc_softc*,int ) ;
 int rcout (struct rc_softc*,int ,int) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int swi_add (int *,char*,int ,struct rc_softc*,int ,int ,int *) ;
 int tty_intr_event ;
 struct tty* ttyalloc () ;
 int ttycreate (struct tty*,int ,char*,int) ;

__attribute__((used)) static int
rc_attach(device_t dev)
{
  struct rc_chans *rc;
 struct tty *tp;
 struct rc_softc *sc;
 u_int port;
 int base, chan, error, i, x;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;
 port = isa_get_port(dev);
 for (i = 0; i < IOBASE_ADDRS; i++)
  if (bus_set_resource(dev, SYS_RES_IOPORT, i,
      port + iobase_addrs[i], 0x10) != 0)
   return (ENXIO);
 error = ENOMEM;
 for (i = 0; i < IOBASE_ADDRS; i++) {
  x = i;
  sc->sc_port[i] = bus_alloc_resource_anywhere(dev,
      SYS_RES_IOPORT, &x, 0x10, RF_ACTIVE);
  if (x != i) {
   device_printf(dev, "ioport %d was rid %d\n", i, x);
   goto fail;
  }
  if (sc->sc_port[i] == ((void*)0)) {
   device_printf(dev, "failed to alloc ioports %x-%x\n",
       port + iobase_addrs[i],
       port + iobase_addrs[i] + 0x10);
   goto fail;
  }
 }
 sc->sc_bt = rman_get_bustag(sc->sc_port[0]);
 sc->sc_bh = rman_get_bushandle(sc->sc_port[0]);

 sc->sc_irq = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->sc_irqrid,
     RF_ACTIVE);
 if (sc->sc_irq == ((void*)0)) {
  device_printf(dev, "failed to alloc IRQ\n");
  goto fail;
 }




 error = ENXIO;
 rcout(sc, CD180_PPRL, 0x22);
 rcout(sc, CD180_PPRH, 0x11);
 if (rcin(sc, CD180_PPRL) != 0x22 || rcin(sc, CD180_PPRH) != 0x11)
  goto fail;
 if (rc_test(sc))
  goto fail;




 sc->sc_unit = device_get_unit(dev);

 device_printf(dev, "%d chans, firmware rev. %c\n",
  CD180_NCHAN, (rcin(sc, CD180_GFRCR) & 0xF) + 'A');
 rc = sc->sc_channels;
 base = CD180_NCHAN * sc->sc_unit;
 for (chan = 0; chan < CD180_NCHAN; chan++, rc++) {
  rc->rc_rcb = sc;
  rc->rc_chan = chan;
  rc->rc_iptr = rc->rc_ibuf;
  rc->rc_bufend = &rc->rc_ibuf[RC_IBUFSIZE];
  rc->rc_hiwat = &rc->rc_ibuf[RC_IHIGHWATER];
  rc->rc_optr = rc->rc_obufend = rc->rc_obuf;
  callout_init(&rc->rc_dtrcallout, 0);
  tp = rc->rc_tp = ttyalloc();
  tp->t_sc = rc;
  tp->t_oproc = rc_start;
  tp->t_param = rc_param;
  tp->t_modem = rc_modem;
  tp->t_break = rc_break;
  tp->t_close = rc_close;
  tp->t_stop = rc_stop;
  ttycreate(tp, TS_CALLOUT, "m%d", chan + base);
 }

 error = bus_setup_intr(dev, sc->sc_irq, INTR_TYPE_TTY, ((void*)0), rc_intr,
     sc, &sc->sc_hwicookie);
 if (error) {
  device_printf(dev, "failed to register interrupt handler\n");
  goto fail;
 }

 swi_add(&tty_intr_event, "rc", rc_pollcard, sc, SWI_TTY, 0,
     &sc->sc_swicookie);
 return (0);

fail:
 rc_release_resources(dev);
 return (error);
}
