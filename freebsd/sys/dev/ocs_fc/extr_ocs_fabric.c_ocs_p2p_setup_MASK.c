#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ external_loopback; } ;
typedef  TYPE_1__ ocs_t ;
struct TYPE_8__ {int p2p_remote_port_id; int p2p_port_id; void* p2p_winner; TYPE_1__* ocs; } ;
typedef  TYPE_2__ ocs_sport_t ;
typedef  int int32_t ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int FUNC2 (TYPE_2__*) ; 

int32_t
FUNC3(ocs_sport_t *sport)
{
	ocs_t *ocs = sport->ocs;
	int32_t rnode_winner;
	rnode_winner = FUNC2(sport);

	/* set sport flags to indicate p2p "winner" */
	if (rnode_winner == 1) {
		sport->p2p_remote_port_id = 0;
		sport->p2p_port_id = 0;
		sport->p2p_winner = FALSE;
	} else if (rnode_winner == 0) {
		sport->p2p_remote_port_id = 2;
		sport->p2p_port_id = 1;
		sport->p2p_winner = TRUE;
	} else {
		/* no winner; only okay if external loopback enabled */
		if (sport->ocs->external_loopback) {
			/*
			 * External loopback mode enabled; local sport and remote node
			 * will be registered with an NPortID = 1;
			 */
			FUNC0(ocs, "External loopback mode enabled\n");
			sport->p2p_remote_port_id = 1;
			sport->p2p_port_id = 1;
			sport->p2p_winner = TRUE;
		} else {
			FUNC1(ocs, "failed to determine p2p winner\n");
			return rnode_winner;
		}
	}
	return 0;
}