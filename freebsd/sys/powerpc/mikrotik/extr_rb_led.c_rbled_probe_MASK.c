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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  model ;
typedef  int /*<<< orphan*/  gp ;
typedef  int /*<<< orphan*/  device_t ;
typedef  char cell_t ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	phandle_t node;
	const char *name;
	cell_t gp[2];
	char model[6];

	node = FUNC4(dev);

	name = FUNC3(dev);
	if (name == NULL)
		return (ENXIO);
	if (FUNC5(name, "led") != 0)
		return (ENXIO);

	if (FUNC0(node, "user_led", gp, sizeof(gp)) <= 0)
		return (ENXIO);

	/* Check root model. */
	node = FUNC1(0);
	if (FUNC0(node, "model", model, sizeof(model)) <= 0)
		return (ENXIO);
	if (FUNC5(model, "RB800") != 0)
		return (ENXIO);

	FUNC2(dev, "RouterBoard LED");
	return (0);
}