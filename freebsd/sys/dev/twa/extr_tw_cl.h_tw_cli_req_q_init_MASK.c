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
struct tw_cli_ctlr_context {int /*<<< orphan*/ * req_q_head; } ;
typedef  int /*<<< orphan*/  TW_VOID ;
typedef  size_t TW_UINT8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tw_cli_ctlr_context*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline TW_VOID
FUNC2(struct tw_cli_ctlr_context *ctlr, TW_UINT8 q_type)
{
	FUNC1(&(ctlr->req_q_head[q_type]));
	FUNC0(ctlr, q_type);
}