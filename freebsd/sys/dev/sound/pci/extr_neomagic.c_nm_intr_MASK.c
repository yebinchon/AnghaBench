#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  wmark; scalar_t__ blksize; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  wmark; scalar_t__ blksize; } ;
struct sc_info {int irsz; int playint; int pbuf; int recint; int rbuf; int misc1int; int misc2int; int /*<<< orphan*/  dev; TYPE_2__ rch; TYPE_1__ pch; } ;

/* Variables and functions */
 int /*<<< orphan*/  NM_BUFFSIZE ; 
 int NM_INT_REG ; 
 int NM_PBUFFER_WMARK ; 
 int NM_RBUFFER_WMARK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*,int) ; 
 int FUNC3 (struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sc_info*,int,int,int) ; 

__attribute__((used)) static void
FUNC5(void *p)
{
	struct sc_info *sc = (struct sc_info *)p;
	int status, x;

	status = FUNC3(sc, NM_INT_REG, sc->irsz);
	if (status == 0)
		return;

	if (status & sc->playint) {
		status &= ~sc->playint;
		sc->pch.wmark += sc->pch.blksize;
		sc->pch.wmark %= NM_BUFFSIZE;
		FUNC4(sc, NM_PBUFFER_WMARK, sc->pbuf + sc->pch.wmark, 4);

		FUNC2(sc, sc->playint);
		FUNC0(sc->pch.channel);
	}
	if (status & sc->recint) {
		status &= ~sc->recint;
		sc->rch.wmark += sc->rch.blksize;
		sc->rch.wmark %= NM_BUFFSIZE;
		FUNC4(sc, NM_RBUFFER_WMARK, sc->rbuf + sc->rch.wmark, 4);

		FUNC2(sc, sc->recint);
		FUNC0(sc->rch.channel);
	}
	if (status & sc->misc1int) {
		status &= ~sc->misc1int;
		FUNC2(sc, sc->misc1int);
		x = FUNC3(sc, 0x400, 1);
		FUNC4(sc, 0x400, x | 2, 1);
	 	FUNC1(sc->dev, "misc int 1\n");
	}
	if (status & sc->misc2int) {
		status &= ~sc->misc2int;
		FUNC2(sc, sc->misc2int);
		x = FUNC3(sc, 0x400, 1);
		FUNC4(sc, 0x400, x & ~2, 1);
	 	FUNC1(sc->dev, "misc int 2\n");
	}
	if (status) {
		FUNC2(sc, status);
	 	FUNC1(sc->dev, "unknown int\n");
	}
}