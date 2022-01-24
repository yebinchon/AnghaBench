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
struct pft_entry {int index; int /*<<< orphan*/  pft; } ;
struct pfr_tstats {int index; int /*<<< orphan*/  pft; } ;
struct pfioc_table {int pfrio_esize; int pfrio_size; struct pft_entry* pfrio_buffer; } ;
typedef  int /*<<< orphan*/  io ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCRGETTSTATS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pft_entry* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct pft_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct pft_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pfioc_table*,int) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (struct pft_entry*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_table*) ; 
 int /*<<< orphan*/  link ; 
 struct pft_entry* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct pft_entry*,int) ; 
 scalar_t__ pf_tick ; 
 int /*<<< orphan*/  pft_table ; 
 int /*<<< orphan*/  pft_table_age ; 
 int pft_table_count ; 
 struct pft_entry* FUNC9 (struct pft_entry*,int) ; 
 scalar_t__ started ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ this_tick ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(void)
{
	struct pfioc_table io;
	struct pfr_tstats *t = NULL;
	struct pft_entry *e;
	int i, numtbls = 1;

	if (started && this_tick <= pf_tick)
		return (0);

	while (!FUNC0(&pft_table)) {
		e = FUNC1(&pft_table);
		FUNC3(&pft_table, e, link);
		FUNC5(e);
	}

	FUNC4(&io, sizeof(io));
	io.pfrio_esize = sizeof(struct pfr_tstats);

	for (;;) {
		t = FUNC9(t, numtbls * sizeof(struct pfr_tstats));
		if (t == NULL) {
			FUNC11(LOG_ERR, "pft_refresh(): reallocf() numtbls=%d: %s",
			    numtbls, FUNC10(errno));
			goto err2;
		}
		io.pfrio_size = numtbls;
		io.pfrio_buffer = t;

		if (FUNC6(dev, DIOCRGETTSTATS, &io)) {
			FUNC11(LOG_ERR, "pft_refresh(): ioctl(): %s",
			    FUNC10(errno));
			goto err2;
		}

		if (numtbls >= io.pfrio_size)
			break;

		numtbls = io.pfrio_size;
	}

	for (i = 0; i < numtbls; i++) {
		e = FUNC7(sizeof(struct pft_entry));
		if (e == NULL)
			goto err1;
		e->index = i + 1;
		FUNC8(&e->pft, t+i, sizeof(struct pfr_tstats));
		FUNC2(&pft_table, e, link);
	}

	pft_table_age = FUNC12(NULL);
	pft_table_count = numtbls;
	pf_tick = this_tick;

	FUNC5(t);
	return (0);
err1:
	while (!FUNC0(&pft_table)) {
		e = FUNC1(&pft_table);
		FUNC3(&pft_table, e, link);
		FUNC5(e);
	}
err2:
	FUNC5(t);
	return(-1);
}