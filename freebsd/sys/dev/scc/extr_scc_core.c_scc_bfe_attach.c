
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int regshft; int bst; int bsh; } ;
struct scc_softc {int sc_rrid; int sc_fastintr; int sc_polled; int * sc_rres; int sc_rtype; struct scc_chan* sc_chan; TYPE_1__ sc_bas; int sc_hwmtx; struct scc_class* sc_class; } ;
struct scc_mode {unsigned int m_mode; int m_probed; int m_sysdev; int m_attached; int m_dev; struct scc_chan* m_chan; } ;
struct scc_class {int size; scalar_t__ cl_range; int cl_channels; int cl_modes; } ;
struct scc_chan {int ch_irid; int ch_nr; int ch_enabled; int ch_sysdev; int * ch_ires; struct scc_mode* ch_mode; int ch_icookie; int ch_rlist; int ch_rres; } ;
struct resource_list_entry {int * res; } ;
typedef int rman_res_t ;
typedef int driver_intr_t ;
typedef int device_t ;
typedef int bus_space_handle_t ;


 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_TTY ;
 int MTX_SPIN ;
 int M_SCC ;
 int M_WAITOK ;
 int M_ZERO ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SCC_ATTACH (struct scc_softc*,int) ;
 int SCC_ENABLED (struct scc_softc*,struct scc_chan*) ;
 int SCC_NMODES ;
 scalar_t__ SERDEV_SYSDEV (int ) ;
 int SYS_RES_IRQ ;
 int abs (scalar_t__) ;
 int bcopy (struct scc_softc*,struct scc_softc*,int) ;
 scalar_t__ bootverbose ;
 int * bus_alloc_resource_any (int ,int ,int*,int) ;
 int * bus_alloc_resource_anywhere (int ,int ,int*,int,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int *,struct scc_softc*,int *) ;
 int bus_space_subregion (int ,int ,int,int,int *) ;
 int device_add_child (int ,int *,int) ;
 int device_attach (int ) ;
 struct scc_softc* device_get_softc (int ) ;
 int device_print_prettyname (int ) ;
 int device_printf (int ,char*,...) ;
 int device_probe_child (int ,int ) ;
 int device_set_ivars (int ,void*) ;
 int device_set_softc (int ,struct scc_softc*) ;
 void* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,...) ;
 int resource_list_add (int *,int ,int ,int,int,int) ;
 struct resource_list_entry* resource_list_find (int *,int ,int ) ;
 int resource_list_init (int *) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;
 int rman_get_size (int *) ;
 int rman_get_start (int *) ;
 int rman_set_bushandle (int *,int ) ;
 int rman_set_bustag (int *,int ) ;
 int * scc_bfe_intr ;

int
scc_bfe_attach(device_t dev, u_int ipc)
{
 struct resource_list_entry *rle;
 struct scc_chan *ch;
 struct scc_class *cl;
 struct scc_mode *m;
 struct scc_softc *sc, *sc0;
 const char *sep;
 bus_space_handle_t bh;
 rman_res_t base, size, start, sz;
 int c, error, mode, sysdev;







 sc0 = device_get_softc(dev);
 cl = sc0->sc_class;
 if (cl->size > sizeof(*sc)) {
  sc = malloc(cl->size, M_SCC, M_WAITOK|M_ZERO);
  bcopy(sc0, sc, sizeof(*sc));
  device_set_softc(dev, sc);
 } else
  sc = sc0;

 size = abs(cl->cl_range) << sc->sc_bas.regshft;

 mtx_init(&sc->sc_hwmtx, "scc_hwmtx", ((void*)0), MTX_SPIN);





 sc->sc_rres = bus_alloc_resource_anywhere(dev, sc->sc_rtype,
     &sc->sc_rrid, cl->cl_channels * size, RF_ACTIVE);
 if (sc->sc_rres == ((void*)0))
  return (ENXIO);
 sc->sc_bas.bsh = rman_get_bushandle(sc->sc_rres);
 sc->sc_bas.bst = rman_get_bustag(sc->sc_rres);





 sc->sc_chan = malloc(sizeof(struct scc_chan) * cl->cl_channels,
     M_SCC, M_WAITOK | M_ZERO);
 for (c = 0; c < cl->cl_channels; c++) {
  ch = &sc->sc_chan[c];







  ch->ch_irid = c * ipc;
  ch->ch_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ,
      &ch->ch_irid, RF_ACTIVE | RF_SHAREABLE);
  if (ipc == 0)
   break;
 }





 sysdev = 0;
 base = rman_get_start(sc->sc_rres);
 sz = (size != 0) ? size : rman_get_size(sc->sc_rres);
 start = base + ((cl->cl_range < 0) ? size * (cl->cl_channels - 1) : 0);
 for (c = 0; c < cl->cl_channels; c++) {
  ch = &sc->sc_chan[c];
  resource_list_init(&ch->ch_rlist);
  ch->ch_nr = c + 1;

  if (!SCC_ENABLED(sc, ch))
   goto next;

  ch->ch_enabled = 1;
  resource_list_add(&ch->ch_rlist, sc->sc_rtype, 0, start,
      start + sz - 1, sz);
  rle = resource_list_find(&ch->ch_rlist, sc->sc_rtype, 0);
  rle->res = &ch->ch_rres;
  bus_space_subregion(rman_get_bustag(sc->sc_rres),
      rman_get_bushandle(sc->sc_rres), start - base, sz, &bh);
  rman_set_bushandle(rle->res, bh);
  rman_set_bustag(rle->res, rman_get_bustag(sc->sc_rres));

  resource_list_add(&ch->ch_rlist, SYS_RES_IRQ, 0, c, c, 1);
  rle = resource_list_find(&ch->ch_rlist, SYS_RES_IRQ, 0);
  rle->res = (ch->ch_ires != ((void*)0)) ? ch->ch_ires :
       sc->sc_chan[0].ch_ires;

  for (mode = 0; mode < SCC_NMODES; mode++) {
   m = &ch->ch_mode[mode];
   m->m_chan = ch;
   m->m_mode = 1U << mode;
   if ((cl->cl_modes & m->m_mode) == 0 || ch->ch_sysdev)
    continue;
   m->m_dev = device_add_child(dev, ((void*)0), -1);
   device_set_ivars(m->m_dev, (void *)m);
   error = device_probe_child(dev, m->m_dev);
   if (!error) {
    m->m_probed = 1;
    m->m_sysdev = SERDEV_SYSDEV(m->m_dev) ? 1 : 0;
    ch->ch_sysdev |= m->m_sysdev;
   }
  }

  next:
  start += (cl->cl_range < 0) ? -size : size;
  sysdev |= ch->ch_sysdev;
 }





 if (bootverbose) {
  device_printf(dev, "%sresetting hardware\n",
      (sysdev) ? "not " : "");
 }
 error = SCC_ATTACH(sc, !sysdev);
 if (error)
  goto fail;
 for (c = 0; c < cl->cl_channels; c++) {
  ch = &sc->sc_chan[c];
  if (ch->ch_ires == ((void*)0))
   continue;
  error = bus_setup_intr(dev, ch->ch_ires,
      INTR_TYPE_TTY, scc_bfe_intr, ((void*)0), sc,
      &ch->ch_icookie);
  if (error) {
   error = bus_setup_intr(dev, ch->ch_ires,
       INTR_TYPE_TTY | INTR_MPSAFE, ((void*)0),
       (driver_intr_t *)scc_bfe_intr, sc, &ch->ch_icookie);
  } else
   sc->sc_fastintr = 1;

  if (error) {
   device_printf(dev, "could not activate interrupt\n");
   bus_release_resource(dev, SYS_RES_IRQ, ch->ch_irid,
       ch->ch_ires);
   ch->ch_ires = ((void*)0);
  }
 }
 sc->sc_polled = 1;
 for (c = 0; c < cl->cl_channels; c++) {
  if (sc->sc_chan[0].ch_ires != ((void*)0))
   sc->sc_polled = 0;
 }




 for (c = 0; c < cl->cl_channels; c++) {
  ch = &sc->sc_chan[c];
  for (mode = 0; mode < SCC_NMODES; mode++) {
   m = &ch->ch_mode[mode];
   if (!m->m_probed)
    continue;
   error = device_attach(m->m_dev);
   if (error)
    continue;
   m->m_attached = 1;
  }
 }

 if (bootverbose && (sc->sc_fastintr || sc->sc_polled)) {
  sep = "";
  device_print_prettyname(dev);
  if (sc->sc_fastintr) {
   printf("%sfast interrupt", sep);
   sep = ", ";
  }
  if (sc->sc_polled) {
   printf("%spolled mode", sep);
   sep = ", ";
  }
  printf("\n");
 }

 return (0);

 fail:
 for (c = 0; c < cl->cl_channels; c++) {
  ch = &sc->sc_chan[c];
  if (ch->ch_ires == ((void*)0))
   continue;
  bus_release_resource(dev, SYS_RES_IRQ, ch->ch_irid,
      ch->ch_ires);
 }
 bus_release_resource(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);
 return (error);
}
