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
typedef  size_t uint32_t ;
struct pvscsi_softc {size_t req_ring_num_pages; size_t cmp_ring_num_pages; int /*<<< orphan*/ * cmp_ring_ppn; int /*<<< orphan*/ * req_ring_ppn; int /*<<< orphan*/  rings_state_ppn; } ;
struct pvscsi_cmd_desc_setup_rings {size_t req_ring_num_pages; size_t cmp_ring_num_pages; int /*<<< orphan*/ * cmp_ring_ppns; int /*<<< orphan*/ * req_ring_ppns; int /*<<< orphan*/  rings_state_ppn; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  PVSCSI_CMD_SETUP_RINGS ; 
 int /*<<< orphan*/  FUNC0 (struct pvscsi_cmd_desc_setup_rings*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_softc*,int /*<<< orphan*/ ,struct pvscsi_cmd_desc_setup_rings*,int) ; 

__attribute__((used)) static void
FUNC2(struct pvscsi_softc *sc)
{
	struct pvscsi_cmd_desc_setup_rings cmd;
	uint32_t i;

	FUNC0(&cmd, sizeof(cmd));

	cmd.rings_state_ppn = sc->rings_state_ppn;

	cmd.req_ring_num_pages = sc->req_ring_num_pages;
	for (i = 0; i < sc->req_ring_num_pages; ++i) {
		cmd.req_ring_ppns[i] = sc->req_ring_ppn[i];
	}

	cmd.cmp_ring_num_pages = sc->cmp_ring_num_pages;
	for (i = 0; i < sc->cmp_ring_num_pages; ++i) {
		cmd.cmp_ring_ppns[i] = sc->cmp_ring_ppn[i];
	}

	FUNC1(sc, PVSCSI_CMD_SETUP_RINGS, &cmd, sizeof(cmd));
}