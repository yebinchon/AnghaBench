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
struct TYPE_2__ {int aux_mux_port; } ;
typedef  int /*<<< orphan*/  KBDC ;

/* Variables and functions */
 int FALSE ; 
 int KBDC_WRITE_TO_AUX ; 
 int KBDC_WRITE_TO_AUX_MUX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 

int
FUNC4(KBDC p, int c)
{
    int f;

    f = FUNC0(p) ?
        KBDC_WRITE_TO_AUX_MUX + FUNC1(p)->aux_mux_port : KBDC_WRITE_TO_AUX;

    if (!FUNC2(p, f))
	return FALSE;
    return FUNC3(p, c);
}