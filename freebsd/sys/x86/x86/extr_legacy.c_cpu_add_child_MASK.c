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
typedef  int /*<<< orphan*/  u_int ;
struct pcpu {int /*<<< orphan*/ * pc_device; } ;
struct cpu_device {struct pcpu* cd_pcpu; int /*<<< orphan*/  cd_rl; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct cpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpu_device*,int /*<<< orphan*/ ) ; 
 struct cpu_device* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 struct pcpu* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static device_t
FUNC7(device_t bus, u_int order, const char *name, int unit)
{
	struct cpu_device *cd;
	device_t child;
	struct pcpu *pc;

	if ((cd = FUNC4(sizeof(*cd), M_DEVBUF, M_NOWAIT | M_ZERO)) == NULL)
		return (NULL);

	FUNC6(&cd->cd_rl);
	pc = FUNC5(FUNC1(bus));
	cd->cd_pcpu = pc;

	child = FUNC0(bus, order, name, unit);
	if (child != NULL) {
		pc->pc_device = child;
		FUNC2(child, cd);
	} else
		FUNC3(cd, M_DEVBUF);
	return (child);
}