
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* uintmax_t ;
typedef int uint64_t ;
struct ntb_transport_mw {scalar_t__ phys_size; scalar_t__ tx_size; scalar_t__ buff_size; scalar_t__ dma_addr; int * virt_addr; scalar_t__ rx_size; int addr_limit; int xlat_align_size; int xlat_align; int vbase; int phys_addr; } ;
struct ntb_transport_ctx {int mw_count; int compact; int qp_count; int link_is_up; struct ntb_transport_mw* mw_vec; struct ntb_transport_mw* qp_vec; int link_watchdog; int dev; int link_cleanup; int link_work; struct ntb_transport_child* child; } ;
struct ntb_transport_child {int consumer; int qpoff; int qpcnt; struct ntb_transport_child* next; int * dev; } ;
typedef int device_t ;
typedef int cfg ;
typedef int buf ;


 int ENXIO ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int M_NTB_T ;
 int M_WAITOK ;
 int M_ZERO ;
 int NTB_SPEED_AUTO ;
 int NTB_WIDTH_AUTO ;
 int TASK_INIT (int *,int ,int ,struct ntb_transport_ctx*) ;
 int TUNABLE_INT_FETCH (char*,int*) ;
 int TUNABLE_STR_FETCH (char*,char*,int) ;
 scalar_t__ UINT32_MAX ;
 int VM_MEMATTR_WRITE_COMBINING ;
 scalar_t__ bootverbose ;
 int bus_generic_attach (int ) ;
 int callout_init (int *,int ) ;
 int callout_reset (int *,int ,int ,struct ntb_transport_ctx*) ;
 int * device_add_child (int ,char*,int) ;
 char* device_get_name (int ) ;
 struct ntb_transport_ctx* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int device_set_ivars (int *,struct ntb_transport_child*) ;
 scalar_t__ enable_xeon_watchdog ;
 int flsll (int) ;
 int free (struct ntb_transport_mw*,int ) ;
 int imin (int,int) ;
 void* malloc (int,int ,int) ;
 scalar_t__ max_mw_size ;
 int ntb_db_valid_mask (int ) ;
 int ntb_link_enable (int ,int ,int ) ;
 int ntb_mw_count (int ) ;
 int ntb_mw_get_range (int ,int,int *,int *,scalar_t__*,int *,int *,int *) ;
 int ntb_mw_set_trans (int ,int,scalar_t__,scalar_t__) ;
 int ntb_mw_set_wc (int ,int,int ) ;
 int ntb_printf (int ,char*,int,...) ;
 int ntb_set_ctx (int ,struct ntb_transport_ctx*,int *) ;
 int ntb_set_mw (struct ntb_transport_ctx*,int,scalar_t__) ;
 int ntb_spad_count (int ) ;
 int ntb_transport_init_queue (struct ntb_transport_ctx*,int) ;
 int ntb_transport_link_cleanup_work ;
 int ntb_transport_ops ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,int) ;
 char* strsep (char**,char*) ;
 int strtol (char*,int *,int) ;
 int xeon_link_watchdog_hb ;

__attribute__((used)) static int
ntb_transport_attach(device_t dev)
{
 struct ntb_transport_ctx *nt = device_get_softc(dev);
 struct ntb_transport_child **cpp = &nt->child;
 struct ntb_transport_child *nc;
 struct ntb_transport_mw *mw;
 uint64_t db_bitmap;
 int rc, i, db_count, spad_count, qp, qpu, qpo, qpt;
 char cfg[128] = "";
 char buf[32];
 char *n, *np, *c, *name;

 nt->dev = dev;
 nt->mw_count = ntb_mw_count(dev);
 spad_count = ntb_spad_count(dev);
 db_bitmap = ntb_db_valid_mask(dev);
 db_count = flsll(db_bitmap);
 KASSERT(db_bitmap == (1 << db_count) - 1,
     ("Doorbells are not sequential (%jx).\n", db_bitmap));

 if (nt->mw_count == 0) {
  device_printf(dev, "At least 1 memory window required.\n");
  return (ENXIO);
 }
 nt->compact = (spad_count < 4 + 2 * nt->mw_count);
 snprintf(buf, sizeof(buf), "hint.%s.%d.compact", device_get_name(dev),
     device_get_unit(dev));
 TUNABLE_INT_FETCH(buf, &nt->compact);
 if (nt->compact) {
  if (spad_count < 3) {
   device_printf(dev, "At least 3 scratchpads required.\n");
   return (ENXIO);
  }
  if (spad_count < 2 + nt->mw_count) {
   nt->mw_count = spad_count - 2;
   device_printf(dev, "Scratchpads enough only for %d "
       "memory windows.\n", nt->mw_count);
  }
 } else {
  if (spad_count < 6) {
   device_printf(dev, "At least 6 scratchpads required.\n");
   return (ENXIO);
  }
  if (spad_count < 4 + 2 * nt->mw_count) {
   nt->mw_count = (spad_count - 4) / 2;
   device_printf(dev, "Scratchpads enough only for %d "
       "memory windows.\n", nt->mw_count);
  }
 }
 if (db_bitmap == 0) {
  device_printf(dev, "At least one doorbell required.\n");
  return (ENXIO);
 }

 nt->mw_vec = malloc(nt->mw_count * sizeof(*nt->mw_vec), M_NTB_T,
     M_WAITOK | M_ZERO);
 for (i = 0; i < nt->mw_count; i++) {
  mw = &nt->mw_vec[i];

  rc = ntb_mw_get_range(dev, i, &mw->phys_addr, &mw->vbase,
      &mw->phys_size, &mw->xlat_align, &mw->xlat_align_size,
      &mw->addr_limit);
  if (rc != 0)
   goto err;

  mw->tx_size = mw->phys_size;
  if (max_mw_size != 0 && mw->tx_size > max_mw_size) {
   device_printf(dev, "Memory window %d limited from "
       "%ju to %ju\n", i, (uintmax_t)mw->tx_size,
       max_mw_size);
   mw->tx_size = max_mw_size;
  }
  if (nt->compact && mw->tx_size > UINT32_MAX) {
   device_printf(dev, "Memory window %d is too big "
       "(%ju)\n", i, (uintmax_t)mw->tx_size);
   rc = ENXIO;
   goto err;
  }

  mw->rx_size = 0;
  mw->buff_size = 0;
  mw->virt_addr = ((void*)0);
  mw->dma_addr = 0;

  rc = ntb_mw_set_wc(dev, i, VM_MEMATTR_WRITE_COMBINING);
  if (rc)
   ntb_printf(0, "Unable to set mw%d caching\n", i);







  ntb_set_mw(nt, i, mw->tx_size);
 }

 qpu = 0;
 qpo = imin(db_count, nt->mw_count);
 qpt = db_count;

 snprintf(buf, sizeof(buf), "hint.%s.%d.config", device_get_name(dev),
     device_get_unit(dev));
 TUNABLE_STR_FETCH(buf, cfg, sizeof(cfg));
 n = cfg;
 i = 0;
 while ((c = strsep(&n, ",")) != ((void*)0)) {
  np = c;
  name = strsep(&np, ":");
  if (name != ((void*)0) && name[0] == 0)
   name = ((void*)0);
  qp = (np && np[0] != 0) ? strtol(np, ((void*)0), 10) : qpo - qpu;
  if (qp <= 0)
   qp = 1;

  if (qp > qpt - qpu) {
   device_printf(dev, "Not enough resources for config\n");
   break;
  }

  nc = malloc(sizeof(*nc), M_DEVBUF, M_WAITOK | M_ZERO);
  nc->consumer = i;
  nc->qpoff = qpu;
  nc->qpcnt = qp;
  nc->dev = device_add_child(dev, name, -1);
  if (nc->dev == ((void*)0)) {
   device_printf(dev, "Can not add child.\n");
   break;
  }
  device_set_ivars(nc->dev, nc);
  *cpp = nc;
  cpp = &nc->next;

  if (bootverbose) {
   device_printf(dev, "%d \"%s\": queues %d",
       i, name, qpu);
   if (qp > 1)
    printf("-%d", qpu + qp - 1);
   printf("\n");
  }

  qpu += qp;
  i++;
 }
 nt->qp_count = qpu;

 nt->qp_vec = malloc(nt->qp_count * sizeof(*nt->qp_vec), M_NTB_T,
     M_WAITOK | M_ZERO);

 for (i = 0; i < nt->qp_count; i++)
  ntb_transport_init_queue(nt, i);

 callout_init(&nt->link_work, 0);
 callout_init(&nt->link_watchdog, 0);
 TASK_INIT(&nt->link_cleanup, 0, ntb_transport_link_cleanup_work, nt);
 nt->link_is_up = 0;

 rc = ntb_set_ctx(dev, nt, &ntb_transport_ops);
 if (rc != 0)
  goto err;

 ntb_link_enable(dev, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);

 for (i = 0; i < nt->mw_count; i++) {
  mw = &nt->mw_vec[i];
  rc = ntb_mw_set_trans(nt->dev, i, mw->dma_addr, mw->buff_size);
  if (rc != 0)
   ntb_printf(0, "load time mw%d xlat fails, rc %d\n", i, rc);
 }

 if (enable_xeon_watchdog != 0)
  callout_reset(&nt->link_watchdog, 0, xeon_link_watchdog_hb, nt);

 bus_generic_attach(dev);
 return (0);

err:
 free(nt->qp_vec, M_NTB_T);
 free(nt->mw_vec, M_NTB_T);
 return (rc);
}
