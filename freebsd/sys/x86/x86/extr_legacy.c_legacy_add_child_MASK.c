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
struct legacy_device {int lg_pcibus; int lg_pcislot; int lg_pcifunc; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_LEGACYDEV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct legacy_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct legacy_device*,int /*<<< orphan*/ ) ; 
 struct legacy_device* FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static device_t
FUNC4(device_t bus, u_int order, const char *name, int unit)
{
	device_t child;
	struct legacy_device *atdev;

	atdev = FUNC3(sizeof(struct legacy_device), M_LEGACYDEV,
	    M_NOWAIT | M_ZERO);
	if (atdev == NULL)
		return(NULL);
	atdev->lg_pcibus = -1;
	atdev->lg_pcislot = -1;
	atdev->lg_pcifunc = -1;

	child = FUNC0(bus, order, name, unit);
	if (child == NULL)
		FUNC2(atdev, M_LEGACYDEV);
	else
		/* should we free this in legacy_child_detached? */
		FUNC1(child, atdev);

	return (child);
}