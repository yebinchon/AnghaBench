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
struct bridge_if {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bridge_if*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_if ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_if*) ; 
 int /*<<< orphan*/  bridge_ifs ; 
 int /*<<< orphan*/  FUNC2 (struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_if*) ; 

void
FUNC4(struct bridge_if *bif)
{
	FUNC2(bif);
	FUNC1(bif);
	FUNC0(&bridge_ifs, bif, b_if);
	FUNC3(bif);
}