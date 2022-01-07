
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uintmax_t ;
typedef size_t u_int ;
struct resource {int dummy; } ;
struct TYPE_9__ {char* rm_descr; void* rm_type; void* rm_end; scalar_t__ rm_start; } ;
struct bhndb_resources {int dwa_count; int rnid; int target; int dw_steal_mtx; TYPE_5__* res; struct bhndb_resources* dwa_freelist; struct bhndb_resources* dw_alloc; TYPE_2__ br_irq_rman; TYPE_2__ br_mem_rman; TYPE_2__ ht_mem_rman; int dev; int * parent_res; struct bhndb_regwin const* win; struct bhndb_hwcfg const* cfg; int refs; int bus_intrs; int bus_regions; int min_prio; } ;
typedef struct bhndb_regwin {scalar_t__ win_type; scalar_t__ win_size; scalar_t__ win_offset; } const bhndb_regwin ;
struct bhndb_hwcfg {struct bhndb_regwin const* register_windows; } ;
struct bhndb_dw_alloc {int dwa_count; int rnid; int target; int dw_steal_mtx; TYPE_5__* res; struct bhndb_dw_alloc* dwa_freelist; struct bhndb_dw_alloc* dw_alloc; TYPE_2__ br_irq_rman; TYPE_2__ br_mem_rman; TYPE_2__ ht_mem_rman; int dev; int * parent_res; struct bhndb_regwin const* win; struct bhndb_hwcfg const* cfg; int refs; int bus_intrs; int bus_regions; int min_prio; } ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;
struct TYPE_10__ {struct resource** resources; TYPE_1__* resource_specs; } ;
struct TYPE_8__ {int type; } ;


 int BHNDB_PRIORITY_NONE ;
 scalar_t__ BHNDB_REGWIN_T_DYN ;
 scalar_t__ BHNDB_REGWIN_T_INVALID ;
 void* BUS_SPACE_MAXADDR_32BIT ;
 int EINVAL ;
 int ENXIO ;
 int INT_MAX ;
 int LIST_INIT (int *) ;
 int MTX_SPIN ;
 int M_BHND ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* RMAN_ARRAY ;
 void* RM_MAX_END ;
 int STAILQ_INIT (int *) ;
 int SYS_RES_MEMORY ;
 int bhndb_alloc_host_resources (TYPE_5__**,int ,int ,struct bhndb_hwcfg const*) ;
 int * bhndb_host_resource_for_regwin (TYPE_5__*,struct bhndb_regwin const*) ;
 int bhndb_regwin_count (struct bhndb_regwin const*,scalar_t__) ;
 int bhndb_release_host_resources (TYPE_5__*) ;
 struct bhndb_resources* bit_alloc (int,int ,int) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*,...) ;
 int free (struct bhndb_resources*,int ) ;
 void* malloc (int,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ,char*,int ) ;
 int rman_fini (TYPE_2__*) ;
 void* rman_get_end (struct resource*) ;
 int rman_get_rid (int *) ;
 scalar_t__ rman_get_size (int *) ;
 int rman_get_start (struct resource*) ;
 int rman_init (TYPE_2__*) ;
 int rman_manage_region (TYPE_2__*,int ,void*) ;

struct bhndb_resources *
bhndb_alloc_resources(device_t dev, device_t parent_dev,
    const struct bhndb_hwcfg *cfg)
{
 struct bhndb_resources *r;
 const struct bhndb_regwin *win;
 bus_size_t last_window_size;
 int rnid;
 int error;
 bool free_ht_mem, free_br_mem, free_br_irq;

 free_ht_mem = 0;
 free_br_mem = 0;
 free_br_irq = 0;

 r = malloc(sizeof(*r), M_BHND, M_NOWAIT|M_ZERO);
 if (r == ((void*)0))
  return (((void*)0));


 r->dev = dev;
 r->cfg = cfg;
 r->res = ((void*)0);
 r->min_prio = BHNDB_PRIORITY_NONE;
 STAILQ_INIT(&r->bus_regions);
 STAILQ_INIT(&r->bus_intrs);

 mtx_init(&r->dw_steal_mtx, device_get_nameunit(dev),
     "bhndb dwa_steal lock", MTX_SPIN);


 r->ht_mem_rman.rm_start = 0;
 r->ht_mem_rman.rm_end = ~0;
 r->ht_mem_rman.rm_type = RMAN_ARRAY;
 r->ht_mem_rman.rm_descr = "BHNDB host memory";
 if ((error = rman_init(&r->ht_mem_rman))) {
  device_printf(r->dev, "could not initialize ht_mem_rman\n");
  goto failed;
 }
 free_ht_mem = 1;



 r->br_mem_rman.rm_start = 0;
 r->br_mem_rman.rm_end = BUS_SPACE_MAXADDR_32BIT;
 r->br_mem_rman.rm_type = RMAN_ARRAY;
 r->br_mem_rman.rm_descr = "BHNDB bridged memory";

 if ((error = rman_init(&r->br_mem_rman))) {
  device_printf(r->dev, "could not initialize br_mem_rman\n");
  goto failed;
 }
 free_br_mem = 1;

 error = rman_manage_region(&r->br_mem_rman, 0, BUS_SPACE_MAXADDR_32BIT);
 if (error) {
  device_printf(r->dev, "could not configure br_mem_rman\n");
  goto failed;
 }



 r->br_irq_rman.rm_start = 0;
 r->br_irq_rman.rm_end = RM_MAX_END;
 r->br_irq_rman.rm_type = RMAN_ARRAY;
 r->br_irq_rman.rm_descr = "BHNDB bridged interrupts";

 if ((error = rman_init(&r->br_irq_rman))) {
  device_printf(r->dev, "could not initialize br_irq_rman\n");
  goto failed;
 }
 free_br_irq = 1;

 error = rman_manage_region(&r->br_irq_rman, 0, RM_MAX_END);
 if (error) {
  device_printf(r->dev, "could not configure br_irq_rman\n");
  goto failed;
 }



 r->dwa_count = bhndb_regwin_count(cfg->register_windows,
     BHNDB_REGWIN_T_DYN);
 if (r->dwa_count >= INT_MAX) {
  device_printf(r->dev, "max dynamic regwin count exceeded\n");
  goto failed;
 }


 r->dw_alloc = malloc(sizeof(r->dw_alloc[0]) * r->dwa_count, M_BHND,
     M_NOWAIT);
 if (r->dw_alloc == ((void*)0))
  goto failed;


 r->dwa_freelist = bit_alloc(r->dwa_count, M_BHND, M_NOWAIT);
 if (r->dwa_freelist == ((void*)0))
  goto failed;


 rnid = 0;
 last_window_size = 0;
 for (win = cfg->register_windows;
     win->win_type != BHNDB_REGWIN_T_INVALID; win++)
 {
  struct bhndb_dw_alloc *dwa;


  if (win->win_type != BHNDB_REGWIN_T_DYN)
   continue;


  if (win->win_size == 0) {
   device_printf(r->dev, "ignoring zero-length dynamic "
       "register window\n");
   continue;
  } else if (last_window_size == 0) {
   last_window_size = win->win_size;
  } else if (last_window_size != win->win_size) {
   device_printf(r->dev, "devices that vend multiple "
       "dynamic register window sizes are not currently "
       "supported\n");
   goto failed;
  }

  dwa = &r->dw_alloc[rnid];
  dwa->win = win;
  dwa->parent_res = ((void*)0);
  dwa->rnid = rnid;
  dwa->target = 0x0;

  LIST_INIT(&dwa->refs);
  rnid++;
 }


 error = bhndb_alloc_host_resources(&r->res, dev, parent_dev, r->cfg);
 if (error) {
  device_printf(r->dev,
      "could not allocate host resources on %s: %d\n",
      device_get_nameunit(parent_dev), error);
  goto failed;
 }



 for (size_t i = 0; i < r->dwa_count; i++) {
  struct bhndb_dw_alloc *dwa;
  const struct bhndb_regwin *win;

  dwa = &r->dw_alloc[i];
  win = dwa->win;


  dwa->parent_res = bhndb_host_resource_for_regwin(r->res, win);
  if (dwa->parent_res == ((void*)0)) {
   device_printf(r->dev, "no host resource found for %u "
       "register window with offset %#jx and "
       "size %#jx\n",
       win->win_type,
       (uintmax_t)win->win_offset,
       (uintmax_t)win->win_size);

   error = ENXIO;
   goto failed;
  }

  if (rman_get_size(dwa->parent_res) < win->win_offset +
      win->win_size)
  {
   device_printf(r->dev, "resource %d too small for "
       "register window with offset %llx and size %llx\n",
       rman_get_rid(dwa->parent_res),
       (unsigned long long) win->win_offset,
       (unsigned long long) win->win_size);

   error = EINVAL;
   goto failed;
  }
 }


 for (u_int i = 0; r->res->resource_specs[i].type != -1; i++) {
  struct resource *res;


  if (r->res->resource_specs[i].type != SYS_RES_MEMORY)
   continue;


  res = r->res->resources[i];
  error = rman_manage_region(&r->ht_mem_rman,
      rman_get_start(res), rman_get_end(res));
  if (error) {
   device_printf(r->dev,
       "could not register host memory region with "
       "ht_mem_rman: %d\n", error);
   goto failed;
  }
 }

 return (r);

failed:
 if (free_ht_mem)
  rman_fini(&r->ht_mem_rman);

 if (free_br_mem)
  rman_fini(&r->br_mem_rman);

 if (free_br_irq)
  rman_fini(&r->br_irq_rman);

 if (r->dw_alloc != ((void*)0))
  free(r->dw_alloc, M_BHND);

 if (r->dwa_freelist != ((void*)0))
  free(r->dwa_freelist, M_BHND);

 if (r->res != ((void*)0))
  bhndb_release_host_resources(r->res);

 mtx_destroy(&r->dw_steal_mtx);

 free(r, M_BHND);

 return (((void*)0));
}
