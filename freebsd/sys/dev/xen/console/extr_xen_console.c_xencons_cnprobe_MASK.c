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
struct consdev {int /*<<< orphan*/  cn_name; int /*<<< orphan*/  cn_pri; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN_REMOTE ; 
 char* driver_name ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void
FUNC2(struct consdev *cp)
{

	if (!FUNC1())
		return;

	cp->cn_pri = CN_REMOTE;
	FUNC0(cp->cn_name, "%s0", driver_name);
}