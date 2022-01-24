#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct amr_softc {int /*<<< orphan*/  amr_buffer64_dmat; int /*<<< orphan*/  amr_buffer_dmat; } ;
struct amr_command_cluster {TYPE_1__* acc_command; } ;
struct TYPE_2__ {int /*<<< orphan*/  ac_dma64map; int /*<<< orphan*/  ac_dmamap; struct amr_softc* ac_sc; } ;

/* Variables and functions */
 int AMR_CMD_CLUSTERCOUNT ; 
 scalar_t__ FUNC0 (struct amr_softc*) ; 
 int /*<<< orphan*/  M_AMR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amr_command_cluster*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct amr_command_cluster *acc)
{
    struct amr_softc	*sc = acc->acc_command[0].ac_sc;
    int			i;

    for (i = 0; i < AMR_CMD_CLUSTERCOUNT; i++) {
	if (acc->acc_command[i].ac_sc == NULL)
	    break;
	FUNC1(sc->amr_buffer_dmat, acc->acc_command[i].ac_dmamap);
	if (FUNC0(sc))
		FUNC1(sc->amr_buffer64_dmat, acc->acc_command[i].ac_dma64map);
    }
    FUNC2(acc, M_AMR);
}