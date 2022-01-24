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
typedef  int /*<<< orphan*/  uint8_t ;
struct mpt_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_softc*,char*,...) ; 

void
FUNC2(struct mpt_softc *mpt, const char *msg, void *addr, int len)
{
	int offset;
	uint8_t *cp = addr;

	FUNC0(mpt, "%s:", msg);
	for (offset = 0; offset < len; offset++) {
		if ((offset & 0xf) == 0) {
			FUNC1(mpt, "\n");
		}
		FUNC1(mpt, " %02x", cp[offset]);
	}
	FUNC1(mpt, "\n");
}