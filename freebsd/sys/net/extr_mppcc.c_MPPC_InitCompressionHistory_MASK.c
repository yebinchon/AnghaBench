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
struct MPPC_comp_state {int /*<<< orphan*/  histptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPPE_HIST_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void FUNC1(char *history)
{
    struct MPPC_comp_state      *state = (struct MPPC_comp_state*)history;

    FUNC0(history, sizeof(struct MPPC_comp_state));
    state->histptr = MPPE_HIST_LEN;
}