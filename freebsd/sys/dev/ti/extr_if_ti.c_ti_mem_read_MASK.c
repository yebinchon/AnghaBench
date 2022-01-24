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
struct ti_softc {int /*<<< orphan*/  ti_bhandle; int /*<<< orphan*/  ti_btag; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ti_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TI_WINBASE ; 
 scalar_t__ TI_WINDOW ; 
 int TI_WINLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static void
FUNC3(struct ti_softc *sc, uint32_t addr, uint32_t len, void *buf)
{
	int segptr, segsize, cnt;
	char *ptr;

	segptr = addr;
	cnt = len;
	ptr = buf;

	while (cnt) {
		if (cnt < TI_WINLEN)
			segsize = cnt;
		else
			segsize = TI_WINLEN - (segptr % TI_WINLEN);
		FUNC0(sc, TI_WINBASE, FUNC2(segptr, TI_WINLEN));
		FUNC1(sc->ti_btag, sc->ti_bhandle,
		    TI_WINDOW + (segptr & (TI_WINLEN - 1)), (uint32_t *)ptr,
		    segsize / 4);
		ptr += segsize;
		segptr += segsize;
		cnt -= segsize;
	}
}