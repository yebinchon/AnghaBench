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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  hcb_p ;

/* Variables and functions */
 int DEBUG_FLAGS ; 
 int DEBUG_TINY ; 
 int /*<<< orphan*/  HS_SEL_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wf_sel_done ; 

__attribute__((used)) static void FUNC5 (hcb_p np)
{
	u32 dsp	= FUNC0 (nc_dsp);

	if (DEBUG_FLAGS & DEBUG_TINY) FUNC2 ("T");

	if (dsp == FUNC1 (np, wf_sel_done) + 8)
		FUNC3(np, HS_SEL_TIMEOUT);
	else
		FUNC4(np);
}