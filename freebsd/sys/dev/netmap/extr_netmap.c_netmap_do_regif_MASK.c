#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct netmap_priv_d {struct netmap_adapter* np_na; struct netmap_if* np_nifp; } ;
struct netmap_if {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  objsize; int /*<<< orphan*/  objtotal; int /*<<< orphan*/  lut; } ;
struct netmap_adapter {scalar_t__ active_fds; int (* nm_krings_create ) (struct netmap_adapter*) ;int (* nm_register ) (struct netmap_adapter*,int) ;TYPE_1__ na_lut; int /*<<< orphan*/  (* nm_krings_delete ) (struct netmap_adapter*) ;int /*<<< orphan*/  name; int /*<<< orphan*/  rx_buf_maxsize; scalar_t__ ifp; int /*<<< orphan*/  nm_mem; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct netmap_adapter*,unsigned int) ; 
 int FUNC5 (struct netmap_priv_d*) ; 
 int /*<<< orphan*/  FUNC6 (struct netmap_priv_d*) ; 
 int /*<<< orphan*/  FUNC7 (struct netmap_adapter*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct netmap_adapter*) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (struct netmap_adapter*,struct netmap_if*) ; 
 struct netmap_if* FUNC11 (struct netmap_adapter*,struct netmap_priv_d*) ; 
 int FUNC12 (struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct netmap_adapter*) ; 
 int FUNC14 (struct netmap_priv_d*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct netmap_adapter*) ; 
 scalar_t__ FUNC16 (struct netmap_priv_d*) ; 
 unsigned int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (struct netmap_priv_d*) ; 
 int FUNC21 (struct netmap_adapter*) ; 
 int FUNC22 (struct netmap_adapter*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct netmap_adapter*) ; 

int
FUNC24(struct netmap_priv_d *priv, struct netmap_adapter *na,
	uint32_t nr_mode, uint16_t nr_ringid, uint64_t nr_flags)
{
	struct netmap_if *nifp = NULL;
	int error;

	FUNC1();
	priv->np_na = na;     /* store the reference */
	error = FUNC8(na->nm_mem, na);
	if (error)
		goto err;

	if (na->active_fds == 0) {

		/* cache the allocator info in the na */
		error = FUNC9(na->nm_mem, &na->na_lut);
		if (error)
			goto err_drop_mem;
		FUNC18("lut %p bufs %u size %u", na->na_lut.lut, na->na_lut.objtotal,
					    na->na_lut.objsize);

		/* ring configuration may have changed, fetch from the card */
		FUNC15(na);
	}

	/* compute the range of tx and rx rings to monitor */
	error = FUNC14(priv, nr_mode, nr_ringid, nr_flags);
	if (error)
		goto err_put_lut;

	if (na->active_fds == 0) {
		/*
		 * If this is the first registration of the adapter,
		 * perform sanity checks and create the in-kernel view
		 * of the netmap rings (the netmap krings).
		 */
		if (na->ifp && FUNC20(priv)) {
			/* This netmap adapter is attached to an ifnet. */
			unsigned mtu = FUNC17(na->ifp);

			FUNC18("%s: mtu %d rx_buf_maxsize %d netmap_buf_size %d",
				na->name, mtu, na->rx_buf_maxsize, FUNC0(na));

			if (na->rx_buf_maxsize == 0) {
				FUNC19("%s: error: rx_buf_maxsize == 0", na->name);
				error = EIO;
				goto err_drop_mem;
			}

			error = FUNC4(na, mtu);
			if (error)
				goto err_drop_mem;
		}

		/*
		 * Depending on the adapter, this may also create
		 * the netmap rings themselves
		 */
		error = na->nm_krings_create(na);
		if (error)
			goto err_put_lut;

	}

	/* now the krings must exist and we can check whether some
	 * previous bind has exclusive ownership on them, and set
	 * nr_pending_mode
	 */
	error = FUNC5(priv);
	if (error)
		goto err_del_krings;

	/* create all needed missing netmap rings */
	error = FUNC12(na);
	if (error)
		goto err_rel_excl;

	/* in all cases, create a new netmap if */
	nifp = FUNC11(na, priv);
	if (nifp == NULL) {
		error = ENOMEM;
		goto err_rel_excl;
	}

	if (FUNC16(priv)) {
		/* Some kring is switching mode, tell the adapter to
		 * react on this. */
		error = na->nm_register(na, 1);
		if (error)
			goto err_del_if;
	}

	/* Commit the reference. */
	na->active_fds++;

	/*
	 * advertise that the interface is ready by setting np_nifp.
	 * The barrier is needed because readers (poll, *SYNC and mmap)
	 * check for priv->np_nifp != NULL without locking
	 */
	FUNC2(); /* make sure previous writes are visible to all CPUs */
	priv->np_nifp = nifp;

	return 0;

err_del_if:
	FUNC10(na, nifp);
err_rel_excl:
	FUNC6(priv);
	FUNC13(na);
err_del_krings:
	if (na->active_fds == 0)
		na->nm_krings_delete(na);
err_put_lut:
	if (na->active_fds == 0)
		FUNC3(&na->na_lut, 0, sizeof(na->na_lut));
err_drop_mem:
	FUNC7(na);
err:
	priv->np_na = NULL;
	return error;
}