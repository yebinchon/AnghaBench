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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child,
    int type, int rid, struct bhnd_resource *r)
{
	int error;

	/* Always direct */
	FUNC0(r->direct, ("indirect resource delegated to bhnd_nexus\n"));

	if ((error = FUNC1(child, type, rid, r->res)))
		return (error);

	r->direct = false;
	return (0);
}