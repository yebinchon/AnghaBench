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
typedef  void* uint32_t ;
struct uath_write_mac {scalar_t__ data; void* len; void* reg; } ;
struct uath_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDCMSG_TARGET_SET_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*) ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (struct uath_softc*,int /*<<< orphan*/ ,struct uath_write_mac*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct uath_softc *sc, uint32_t reg, uint32_t val)
{
	struct uath_write_mac write;
	int error;

	write.reg = FUNC1(reg);
	write.len = FUNC1(0);	/* 0 = single write */
	*(uint32_t *)write.data = FUNC1(val);

	error = FUNC2(sc, WDCMSG_TARGET_SET_CONFIG, &write,
	    3 * sizeof (uint32_t), 0);
	if (error != 0) {
		FUNC0(sc->sc_dev, "could not write register 0x%02x\n",
		    reg);
	}
	return (error);
}