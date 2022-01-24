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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int RF_ACTIVE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child,
    int type, int rid, struct bhnd_resource *r)
{
	int error;

	/* Indirect resources don't require activation */
	if (!r->direct)
		return (0);

	FUNC1(FUNC2(r->res) & RF_ACTIVE,
	    ("RF_ACTIVE not set on direct resource"));

	/* Perform deactivation */
	error = FUNC0(dev, child, type, rid, r->res);
	if (!error)
		r->direct = false;

	return (error);
}