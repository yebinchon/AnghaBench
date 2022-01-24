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
typedef  scalar_t__ u_int ;
struct bhndb_softc {int dummy; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 struct bhndb_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, u_int intr, rman_res_t *irq)
{
	struct bhndb_softc	*sc;
	u_int			 ivec;
	int			 error;

	sc = FUNC2(dev);

	/* Is the intr valid? */
	if (intr >= FUNC0(child))
		return (EINVAL);

	/* Fetch the interrupt vector */
	if ((error = FUNC1(child, intr, &ivec)))
		return (error);

	/* Map directly to the actual backplane interrupt vector */
	*irq = ivec;

	return (0);
}