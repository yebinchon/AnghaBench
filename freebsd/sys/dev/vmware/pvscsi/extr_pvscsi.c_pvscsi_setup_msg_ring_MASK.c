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
struct pvscsi_softc {size_t msg_ring_num_pages; int /*<<< orphan*/ * msg_ring_ppn; int /*<<< orphan*/  use_msg; } ;
struct pvscsi_cmd_desc_setup_msg_ring {size_t num_pages; int /*<<< orphan*/ * ring_ppns; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PVSCSI_CMD_SETUP_MSG_RING ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_cmd_desc_setup_msg_ring*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pvscsi_softc*,int /*<<< orphan*/ ,struct pvscsi_cmd_desc_setup_msg_ring*,int) ; 

__attribute__((used)) static void
FUNC3(struct pvscsi_softc *sc)
{
	struct pvscsi_cmd_desc_setup_msg_ring cmd;
	uint32_t i;

	FUNC0(sc->use_msg, ("msg is not being used"));

	FUNC1(&cmd, sizeof(cmd));

	cmd.num_pages = sc->msg_ring_num_pages;
	for (i = 0; i < sc->msg_ring_num_pages; ++i) {
		cmd.ring_ppns[i] = sc->msg_ring_ppn[i];
	}

	FUNC2(sc, PVSCSI_CMD_SETUP_MSG_RING, &cmd, sizeof(cmd));
}