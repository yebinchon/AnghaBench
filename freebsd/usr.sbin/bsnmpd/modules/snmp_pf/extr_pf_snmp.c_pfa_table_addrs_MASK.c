#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct pfr_table {int /*<<< orphan*/  pfrt_name; } ;
struct TYPE_4__ {scalar_t__ pfra_af; } ;
struct TYPE_3__ {int /*<<< orphan*/  pfrt_name; } ;
struct pfr_astats {int pfrio_size; int pfrio_esize; TYPE_2__ pfras_a; struct pfr_astats* pfrio_buffer; TYPE_1__ pfrio_table; } ;
struct pfioc_table {int pfrio_size; int pfrio_esize; TYPE_2__ pfras_a; struct pfioc_table* pfrio_buffer; TYPE_1__ pfrio_table; } ;
struct pfa_entry {int /*<<< orphan*/  pfas; scalar_t__ index; } ;
typedef  int /*<<< orphan*/  io ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  DIOCRGETASTATS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct pfa_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct pfr_astats*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfr_astats*) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct pfr_astats*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pfr_astats*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfa_table ; 
 struct pfr_astats* FUNC6 (struct pfr_astats*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC10(u_int sidx, struct pfr_table *pt)
{
	struct pfioc_table io;
	struct pfr_astats *t = NULL;
	struct pfa_entry *e;
	int i, numaddrs = 1;

	if (pt == NULL)
		return (-1);

	FUNC5(&io, 0, sizeof(io));
	FUNC8(io.pfrio_table.pfrt_name, pt->pfrt_name,
	    sizeof(io.pfrio_table.pfrt_name));

	for (;;) {
		t = FUNC6(t, numaddrs * sizeof(struct pfr_astats));
		if (t == NULL) {
			FUNC9(LOG_ERR, "pfa_table_addrs(): reallocf(): %s",
			    FUNC7(errno));
			numaddrs = -1;
			goto error;
		}

		FUNC5(t, 0, sizeof(*t));
		io.pfrio_size = numaddrs;
		io.pfrio_buffer = t;
		io.pfrio_esize = sizeof(struct pfr_astats);

		if (FUNC2(dev, DIOCRGETASTATS, &io)) {
			FUNC9(LOG_ERR, "pfa_table_addrs(): ioctl() on %s: %s",
			    pt->pfrt_name, FUNC7(errno));
			numaddrs = -1;
			break;
		}

		if (numaddrs >= io.pfrio_size)
			break;

		numaddrs = io.pfrio_size;
	}

	for (i = 0; i < numaddrs; i++) {
		if ((t + i)->pfras_a.pfra_af != AF_INET &&
		    (t + i)->pfras_a.pfra_af != AF_INET6) {
			numaddrs = i;
			break;
		}

		e = (struct pfa_entry *)FUNC3(sizeof(struct pfa_entry));
		if (e == NULL) {
			FUNC9(LOG_ERR, "pfa_table_addrs(): malloc(): %s",
			    FUNC7(errno));
			numaddrs = -1;
			break;
		}
		e->index = sidx + i;
		FUNC4(&e->pfas, t + i, sizeof(struct pfr_astats));
		FUNC0(&pfa_table, e, link);
	}

	FUNC1(t);
error:
	return (numaddrs);
}