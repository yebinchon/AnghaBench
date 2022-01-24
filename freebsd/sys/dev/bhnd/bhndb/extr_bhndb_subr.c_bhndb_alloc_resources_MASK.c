#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  size_t u_int ;
struct resource {int dummy; } ;
struct TYPE_9__ {char* rm_descr; void* rm_type; void* rm_end; scalar_t__ rm_start; } ;
struct bhndb_resources {int dwa_count; int rnid; int target; int /*<<< orphan*/  dw_steal_mtx; TYPE_5__* res; struct bhndb_resources* dwa_freelist; struct bhndb_resources* dw_alloc; TYPE_2__ br_irq_rman; TYPE_2__ br_mem_rman; TYPE_2__ ht_mem_rman; int /*<<< orphan*/  dev; int /*<<< orphan*/ * parent_res; struct bhndb_regwin const* win; struct bhndb_hwcfg const* cfg; int /*<<< orphan*/  refs; int /*<<< orphan*/  bus_intrs; int /*<<< orphan*/  bus_regions; int /*<<< orphan*/  min_prio; } ;
typedef  struct bhndb_regwin {scalar_t__ win_type; scalar_t__ win_size; scalar_t__ win_offset; } const bhndb_regwin ;
struct bhndb_hwcfg {struct bhndb_regwin const* register_windows; } ;
struct bhndb_dw_alloc {int dwa_count; int rnid; int target; int /*<<< orphan*/  dw_steal_mtx; TYPE_5__* res; struct bhndb_dw_alloc* dwa_freelist; struct bhndb_dw_alloc* dw_alloc; TYPE_2__ br_irq_rman; TYPE_2__ br_mem_rman; TYPE_2__ ht_mem_rman; int /*<<< orphan*/  dev; int /*<<< orphan*/ * parent_res; struct bhndb_regwin const* win; struct bhndb_hwcfg const* cfg; int /*<<< orphan*/  refs; int /*<<< orphan*/  bus_intrs; int /*<<< orphan*/  bus_regions; int /*<<< orphan*/  min_prio; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_size_t ;
struct TYPE_10__ {struct resource** resources; TYPE_1__* resource_specs; } ;
struct TYPE_8__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHNDB_PRIORITY_NONE ; 
 scalar_t__ BHNDB_REGWIN_T_DYN ; 
 scalar_t__ BHNDB_REGWIN_T_INVALID ; 
 void* BUS_SPACE_MAXADDR_32BIT ; 
 int EINVAL ; 
 int ENXIO ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int /*<<< orphan*/  M_BHND ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 void* RMAN_ARRAY ; 
 void* RM_MAX_END ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int SYS_RES_MEMORY ; 
 int FUNC2 (TYPE_5__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bhndb_hwcfg const*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_5__*,struct bhndb_regwin const*) ; 
 int FUNC4 (struct bhndb_regwin const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 struct bhndb_resources* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct bhndb_resources*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 void* FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct resource*) ; 
 int FUNC18 (TYPE_2__*) ; 
 int FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 

struct bhndb_resources *
FUNC20(device_t dev, device_t parent_dev,
    const struct bhndb_hwcfg *cfg)
{
	struct bhndb_resources		*r;
	const struct bhndb_regwin	*win;
	bus_size_t			 last_window_size;
	int				 rnid;
	int				 error;
	bool				 free_ht_mem, free_br_mem, free_br_irq;

	free_ht_mem = false;
	free_br_mem = false;
	free_br_irq = false;

	r = FUNC10(sizeof(*r), M_BHND, M_NOWAIT|M_ZERO);
	if (r == NULL)
		return (NULL);

	/* Basic initialization */
	r->dev = dev;
	r->cfg = cfg;
	r->res = NULL;
	r->min_prio = BHNDB_PRIORITY_NONE;
	FUNC1(&r->bus_regions);
	FUNC1(&r->bus_intrs);

	FUNC12(&r->dw_steal_mtx, FUNC7(dev),
	    "bhndb dwa_steal lock", MTX_SPIN);

	/* Initialize host address space resource manager. */
	r->ht_mem_rman.rm_start = 0;
	r->ht_mem_rman.rm_end = ~0;
	r->ht_mem_rman.rm_type = RMAN_ARRAY;
	r->ht_mem_rman.rm_descr = "BHNDB host memory";
	if ((error = FUNC18(&r->ht_mem_rman))) {
		FUNC8(r->dev, "could not initialize ht_mem_rman\n");
		goto failed;
	}
	free_ht_mem = true;


	/* Initialize resource manager for the bridged address space. */
	r->br_mem_rman.rm_start = 0;
	r->br_mem_rman.rm_end = BUS_SPACE_MAXADDR_32BIT;
	r->br_mem_rman.rm_type = RMAN_ARRAY;
	r->br_mem_rman.rm_descr = "BHNDB bridged memory";

	if ((error = FUNC18(&r->br_mem_rman))) {
		FUNC8(r->dev, "could not initialize br_mem_rman\n");
		goto failed;
	}
	free_br_mem = true;

	error = FUNC19(&r->br_mem_rman, 0, BUS_SPACE_MAXADDR_32BIT);
	if (error) {
		FUNC8(r->dev, "could not configure br_mem_rman\n");
		goto failed;
	}


	/* Initialize resource manager for the bridged interrupt controller. */
	r->br_irq_rman.rm_start = 0;
	r->br_irq_rman.rm_end = RM_MAX_END;
	r->br_irq_rman.rm_type = RMAN_ARRAY;
	r->br_irq_rman.rm_descr = "BHNDB bridged interrupts";

	if ((error = FUNC18(&r->br_irq_rman))) {
		FUNC8(r->dev, "could not initialize br_irq_rman\n");
		goto failed;
	}
	free_br_irq = true;

	error = FUNC19(&r->br_irq_rman, 0, RM_MAX_END);
	if (error) {
		FUNC8(r->dev, "could not configure br_irq_rman\n");
		goto failed;
	}

	/* Fetch the dynamic regwin count and verify that it does not exceed
	 * what is representable via our freelist bitstring. */
	r->dwa_count = FUNC4(cfg->register_windows,
	    BHNDB_REGWIN_T_DYN);
	if (r->dwa_count >= INT_MAX) {
		FUNC8(r->dev, "max dynamic regwin count exceeded\n");
		goto failed;
	}
	
	/* Allocate the dynamic window allocation table. */
	r->dw_alloc = FUNC10(sizeof(r->dw_alloc[0]) * r->dwa_count, M_BHND,
	    M_NOWAIT);
	if (r->dw_alloc == NULL)
		goto failed;

	/* Allocate the dynamic window allocation freelist */
	r->dwa_freelist = FUNC6(r->dwa_count, M_BHND, M_NOWAIT);
	if (r->dwa_freelist == NULL)
		goto failed;

	/* Initialize the dynamic window table */
	rnid = 0;
	last_window_size = 0;
	for (win = cfg->register_windows;
	    win->win_type != BHNDB_REGWIN_T_INVALID; win++)
	{
		struct bhndb_dw_alloc *dwa;

		/* Skip non-DYN windows */
		if (win->win_type != BHNDB_REGWIN_T_DYN)
			continue;

		/* Validate the window size */
		if (win->win_size == 0) {
			FUNC8(r->dev, "ignoring zero-length dynamic "
			    "register window\n");
			continue;
		} else if (last_window_size == 0) {
			last_window_size = win->win_size;
		} else if (last_window_size != win->win_size) {
			/* 
			 * No existing hardware should trigger this.
			 * 
			 * If you run into this in the future, the dynamic
			 * window allocator and the resource priority system
			 * will need to be extended to support multiple register
			 * window allocation pools. 
			 */
			FUNC8(r->dev, "devices that vend multiple "
			    "dynamic register window sizes are not currently "
			    "supported\n");
			goto failed;
		}

		dwa = &r->dw_alloc[rnid];
		dwa->win = win;
		dwa->parent_res = NULL;
		dwa->rnid = rnid;
		dwa->target = 0x0;
		
		FUNC0(&dwa->refs);
		rnid++;
	}

	/* Allocate host resources */
	error = FUNC2(&r->res, dev, parent_dev, r->cfg);
	if (error) {
		FUNC8(r->dev,
		    "could not allocate host resources on %s: %d\n",
		    FUNC7(parent_dev), error);
		goto failed;
	}

	/* Populate (and validate) parent resource references for all
	 * dynamic windows */
	for (size_t i = 0; i < r->dwa_count; i++) {
		struct bhndb_dw_alloc		*dwa;
		const struct bhndb_regwin	*win;

		dwa = &r->dw_alloc[i];
		win = dwa->win;

		/* Find and validate corresponding resource. */
		dwa->parent_res = FUNC3(r->res, win);
		if (dwa->parent_res == NULL) {
			FUNC8(r->dev, "no host resource found for %u "
			    "register window with offset %#jx and "
			    "size %#jx\n",
			    win->win_type,
			    (uintmax_t)win->win_offset,
			    (uintmax_t)win->win_size);

			error = ENXIO;
			goto failed;
		}

		if (FUNC16(dwa->parent_res) < win->win_offset +
		    win->win_size)
		{
			FUNC8(r->dev, "resource %d too small for "
			    "register window with offset %llx and size %llx\n",
			    FUNC15(dwa->parent_res),
			    (unsigned long long) win->win_offset,
			    (unsigned long long) win->win_size);

			error = EINVAL;
			goto failed;
		}
	}

	/* Add allocated memory resources to our host memory resource manager */
	for (u_int i = 0; r->res->resource_specs[i].type != -1; i++) {
		struct resource *res;
		
		/* skip non-memory resources */
		if (r->res->resource_specs[i].type != SYS_RES_MEMORY)
			continue;

		/* add host resource to set of managed regions */
		res = r->res->resources[i];
		error = FUNC19(&r->ht_mem_rman,
		    FUNC17(res), FUNC14(res));
		if (error) {
			FUNC8(r->dev,
			    "could not register host memory region with "
			    "ht_mem_rman: %d\n", error);
			goto failed;
		}
	}

	return (r);

failed:
	if (free_ht_mem)
		FUNC13(&r->ht_mem_rman);

	if (free_br_mem)
		FUNC13(&r->br_mem_rman);

	if (free_br_irq)
		FUNC13(&r->br_irq_rman);

	if (r->dw_alloc != NULL)
		FUNC9(r->dw_alloc, M_BHND);

	if (r->dwa_freelist != NULL)
		FUNC9(r->dwa_freelist, M_BHND);

	if (r->res != NULL)
		FUNC5(r->res);

	FUNC11(&r->dw_steal_mtx);

	FUNC9(r, M_BHND);

	return (NULL);
}