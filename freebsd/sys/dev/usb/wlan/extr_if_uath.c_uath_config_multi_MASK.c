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
typedef  int uint32_t ;
struct uath_write_mac {int /*<<< orphan*/  data; void* len; void* reg; } ;
struct uath_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  WDCMSG_TARGET_SET_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (void const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct uath_softc*,int /*<<< orphan*/ ,struct uath_write_mac*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct uath_softc *sc, uint32_t reg, const void *data,
    int len)
{
	struct uath_write_mac write;
	int error;

	write.reg = FUNC2(reg);
	write.len = FUNC2(len);
	FUNC0(data, write.data, len);

	/* properly handle the case where len is zero (reset) */
	error = FUNC3(sc, WDCMSG_TARGET_SET_CONFIG, &write,
	    (len == 0) ? sizeof (uint32_t) : 2 * sizeof (uint32_t) + len, 0);
	if (error != 0) {
		FUNC1(sc->sc_dev,
		    "could not write %d bytes to register 0x%02x\n", len, reg);
	}
	return (error);
}