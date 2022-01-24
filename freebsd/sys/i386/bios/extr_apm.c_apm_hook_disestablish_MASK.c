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
struct apmhook {int dummy; } ;

/* Variables and functions */
 int NAPM_HOOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct apmhook*) ; 
 int /*<<< orphan*/ * hook ; 

void
FUNC1(int apmh, struct apmhook *ah)
{
	if (apmh < 0 || apmh >= NAPM_HOOK)
		return;

	FUNC0(&hook[apmh], ah);
}