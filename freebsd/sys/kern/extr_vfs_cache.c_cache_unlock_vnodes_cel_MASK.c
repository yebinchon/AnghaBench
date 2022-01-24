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
struct celockstate {int /*<<< orphan*/ ** vlp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct celockstate *cel)
{

	FUNC0(cel->vlp[0] != NULL || cel->vlp[1] != NULL);

	if (cel->vlp[0] != NULL)
		FUNC1(cel->vlp[0]);
	if (cel->vlp[1] != NULL)
		FUNC1(cel->vlp[1]);
	if (cel->vlp[2] != NULL)
		FUNC1(cel->vlp[2]);
}