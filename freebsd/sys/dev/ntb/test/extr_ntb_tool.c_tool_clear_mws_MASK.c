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
struct tool_ctx {int peer_cnt; TYPE_1__* peers; } ;
struct TYPE_2__ {int inmw_cnt; int /*<<< orphan*/  inmws; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NTB_TOOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tool_ctx*,int,int) ; 

__attribute__((used)) static void FUNC2(struct tool_ctx *tc)
{
	int widx, pidx;

	/* Free outbound memory windows */
	for (pidx = 0; pidx < tc->peer_cnt; pidx++) {
		for (widx = 0; widx < tc->peers[pidx].inmw_cnt; widx++)
			FUNC1(tc, pidx, widx);
		FUNC0(tc->peers[pidx].inmws, M_NTB_TOOL);
	}
}