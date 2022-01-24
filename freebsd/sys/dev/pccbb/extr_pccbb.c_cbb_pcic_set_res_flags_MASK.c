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
typedef  int /*<<< orphan*/  u_long ;
struct resource {int dummy; } ;
struct cbb_softc {int /*<<< orphan*/ * exca; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int SYS_RES_MEMORY ; 
 struct resource* FUNC0 (struct cbb_softc*,int,int) ; 
 struct cbb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct resource*,int /*<<< orphan*/ ) ; 

int
FUNC4(device_t brdev, device_t child, int type, int rid,
    u_long flags)
{
	struct cbb_softc *sc = FUNC1(brdev);
	struct resource *res;

	if (type != SYS_RES_MEMORY)
		return (EINVAL);
	res = FUNC0(sc, type, rid);
	if (res == NULL) {
		FUNC2(brdev,
		    "set_res_flags: specified rid not found\n");
		return (ENOENT);
	}
	return (FUNC3(&sc->exca[0], res, flags));
}