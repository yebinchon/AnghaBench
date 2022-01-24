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
struct apm_softc {int dummy; } ;
struct apm_info {int ai_acline; } ;

/* Variables and functions */
 int POWER_PROFILE_ECONOMY ; 
 int POWER_PROFILE_PERFORMANCE ; 
 scalar_t__ FUNC0 (struct apm_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct apm_softc *sc)
{
	int state;
	struct apm_info info;
	static int apm_acline = 0;

	if (FUNC0(&info))
		return;

	if (apm_acline != info.ai_acline) {
		apm_acline = info.ai_acline;
		state = apm_acline ? POWER_PROFILE_PERFORMANCE : POWER_PROFILE_ECONOMY;
		FUNC1(state);
	}
}