#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pfioc_iface {int pfiio_esize; int pfiio_size; struct pfi_kif* pfiio_buffer; } ;
struct pfi_kif {int index; int /*<<< orphan*/  pfi; } ;
struct pfi_entry {int index; int /*<<< orphan*/  pfi; } ;
typedef  int /*<<< orphan*/  io ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCIGETIFACES ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pfi_kif* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pfi_kif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pfi_kif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pfioc_iface*,int) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (struct pfi_kif*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_iface*) ; 
 int /*<<< orphan*/  link ; 
 struct pfi_kif* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct pfi_kif*,int) ; 
 scalar_t__ pf_tick ; 
 int /*<<< orphan*/  pfi_table ; 
 int /*<<< orphan*/  pfi_table_age ; 
 int pfi_table_count ; 
 struct pfi_kif* FUNC9 (struct pfi_kif*,int) ; 
 scalar_t__ started ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ this_tick ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(void)
{
	struct pfioc_iface io;
	struct pfi_kif *p = NULL;
	struct pfi_entry *e;
	int i, numifs = 1;

	if (started && this_tick <= pf_tick)
		return (0);

	while (!FUNC0(&pfi_table)) {
		e = FUNC1(&pfi_table);
		FUNC3(&pfi_table, e, link);
		FUNC5(e);
	}

	FUNC4(&io, sizeof(io));
	io.pfiio_esize = sizeof(struct pfi_kif);

	for (;;) {
		p = FUNC9(p, numifs * sizeof(struct pfi_kif));
		if (p == NULL) {
			FUNC11(LOG_ERR, "pfi_refresh(): reallocf() numifs=%d: %s",
			    numifs, FUNC10(errno));
			goto err2;
		}
		io.pfiio_size = numifs;
		io.pfiio_buffer = p;

		if (FUNC6(dev, DIOCIGETIFACES, &io)) {
			FUNC11(LOG_ERR, "pfi_refresh(): ioctl(): %s",
			    FUNC10(errno));
			goto err2;
		}

		if (numifs >= io.pfiio_size)
			break;

		numifs = io.pfiio_size;
	}

	for (i = 0; i < numifs; i++) {
		e = FUNC7(sizeof(struct pfi_entry));
		if (e == NULL)
			goto err1;
		e->index = i + 1;
		FUNC8(&e->pfi, p+i, sizeof(struct pfi_kif));
		FUNC2(&pfi_table, e, link);
	}

	pfi_table_age = FUNC12(NULL);
	pfi_table_count = numifs;
	pf_tick = this_tick;

	FUNC5(p);
	return (0);

err1:
	while (!FUNC0(&pfi_table)) {
		e = FUNC1(&pfi_table);
		FUNC3(&pfi_table, e, link);
		FUNC5(e);
	}
err2:
	FUNC5(p);
	return(-1);
}