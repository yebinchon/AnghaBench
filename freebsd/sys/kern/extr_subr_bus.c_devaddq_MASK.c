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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_BUS ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  devctl_queue_length ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char const*,char const*,char*,char*,char const*) ; 

__attribute__((used)) static void
FUNC8(const char *type, const char *what, device_t dev)
{
	char *data = NULL;
	char *loc = NULL;
	char *pnp = NULL;
	const char *parstr;

	if (!devctl_queue_length)/* Rare race, but lost races safely discard */
		return;
	data = FUNC6(1024, M_BUS, M_NOWAIT);
	if (data == NULL)
		goto bad;

	/* get the bus specific location of this device */
	loc = FUNC6(1024, M_BUS, M_NOWAIT);
	if (loc == NULL)
		goto bad;
	*loc = '\0';
	FUNC0(dev, loc, 1024);

	/* Get the bus specific pnp info of this device */
	pnp = FUNC6(1024, M_BUS, M_NOWAIT);
	if (pnp == NULL)
		goto bad;
	*pnp = '\0';
	FUNC1(dev, pnp, 1024);

	/* Get the parent of this device, or / if high enough in the tree. */
	if (FUNC4(dev) == NULL)
		parstr = ".";	/* Or '/' ? */
	else
		parstr = FUNC3(FUNC4(dev));
	/* String it all together. */
	FUNC7(data, 1024, "%s%s at %s %s on %s\n", type, what, loc, pnp,
	  parstr);
	FUNC5(loc, M_BUS);
	FUNC5(pnp, M_BUS);
	FUNC2(data);
	return;
bad:
	FUNC5(pnp, M_BUS);
	FUNC5(loc, M_BUS);
	FUNC5(data, M_BUS);
	return;
}