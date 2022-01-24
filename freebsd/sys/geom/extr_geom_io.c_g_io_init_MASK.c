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
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  biozone ; 
 int /*<<< orphan*/  g_bio_run_down ; 
 int /*<<< orphan*/  g_bio_run_up ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2()
{

	FUNC0(&g_bio_run_down);
	FUNC0(&g_bio_run_up);
	biozone = FUNC1("g_bio", sizeof (struct bio),
	    NULL, NULL,
	    NULL, NULL,
	    0, 0);
}