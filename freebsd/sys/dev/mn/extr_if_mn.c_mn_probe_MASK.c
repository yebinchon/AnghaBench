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
typedef  int u_int ;
struct m32xreg {int dummy; } ;
struct f54wreg {int dummy; } ;
struct f54rreg {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int
FUNC3 (device_t self)
{
	u_int id = FUNC1(self);

	if (sizeof (struct m32xreg) != 256) {
		FUNC2("MN: sizeof(struct m32xreg) = %zd, should have been 256\n", sizeof (struct m32xreg));
		return (ENXIO);
	}
	if (sizeof (struct f54rreg) != 128) {
		FUNC2("MN: sizeof(struct f54rreg) = %zd, should have been 128\n", sizeof (struct f54rreg));
		return (ENXIO);
	}
	if (sizeof (struct f54wreg) != 128) {
		FUNC2("MN: sizeof(struct f54wreg) = %zd, should have been 128\n", sizeof (struct f54wreg));
		return (ENXIO);
	}

	if (id != 0x2101110a) 
		return (ENXIO);

	FUNC0(self, "Munich32X E1/T1 HDLC Controller");
	return (BUS_PROBE_DEFAULT);
}