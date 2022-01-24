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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCIR_DSXGCTRL ; 
 scalar_t__ FUNC1 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u_int32_t
FUNC4(kobj_t obj, void *devinfo)
{
	struct sc_info *sc = (struct sc_info *)devinfo;
	u_int32_t x;

	x = FUNC2(sc->dev, PCIR_DSXGCTRL, 1);
	if (x & 0x03) {
		FUNC3(sc->dev, PCIR_DSXGCTRL, x & ~0x03, 1);
		FUNC3(sc->dev, PCIR_DSXGCTRL, x | 0x03, 1);
		FUNC3(sc->dev, PCIR_DSXGCTRL, x & ~0x03, 1);
		/*
		 * The YMF740 on some Intel motherboards requires a pretty
		 * hefty delay after this reset for some reason...  Otherwise:
		 * "pcm0: ac97 codec init failed"
		 * Maybe this is needed for all YMF740's?
		 * 400ms and 500ms here seem to work, 300ms does not.
		 *
		 * do it for all chips -cg
		 */
		FUNC0(500000);
	}

	return FUNC1(sc, 0)? 0 : 1;
}