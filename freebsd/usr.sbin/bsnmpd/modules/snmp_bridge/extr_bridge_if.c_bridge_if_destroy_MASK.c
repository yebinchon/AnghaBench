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
struct bridge_if {int /*<<< orphan*/  bif_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bridge_if*) ; 

__attribute__((used)) static int
FUNC2(struct bridge_if *bif)
{
	if (FUNC0(bif->bif_name) < 0)
		return (-1);

	FUNC1(bif);

	return (0);
}