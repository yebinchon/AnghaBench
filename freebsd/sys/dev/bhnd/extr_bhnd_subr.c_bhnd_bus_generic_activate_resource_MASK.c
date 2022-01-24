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
struct bhnd_resource {int direct; int /*<<< orphan*/  res; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,struct bhnd_resource*) ; 
 int ENODEV ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(device_t dev, device_t child, int type,
    int rid, struct bhnd_resource *r)
{
	int	error;
	bool	passthrough;

	passthrough = (FUNC2(child) != dev);

	/* Try to delegate to the parent */
	if (FUNC2(dev) != NULL) {
		error = FUNC0(FUNC2(dev),
		    child, type, rid, r);
	} else {
		error = ENODEV;
	}

	/* If bhnd(4) activation has failed and we're the child's direct
	 * parent, try falling back on standard resource activation.
	 */
	if (error && !passthrough) {
		error = FUNC1(child, type, rid, r->res);
		if (!error)
			r->direct = true;
	}

	return (error);
}