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
struct sndcard_func {uintptr_t func; } ;
struct sbc_softc {uintptr_t bd_ver; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 struct sndcard_func* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sbc_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t bus, device_t dev, int index, uintptr_t * result)
{
	struct sbc_softc *scp = FUNC1(bus);
	struct sndcard_func *func = FUNC0(dev);

	switch (index) {
	case 0:
		*result = func->func;
		break;

	case 1:
		*result = scp->bd_ver;
	      	break;

	default:
		return ENOENT;
	}

	return 0;
}