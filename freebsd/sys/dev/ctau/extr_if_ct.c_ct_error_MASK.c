#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* ifp; int /*<<< orphan*/  timeout; } ;
typedef  TYPE_1__ drv_t ;
struct TYPE_8__ {TYPE_1__* sys; } ;
typedef  TYPE_2__ ct_chan_t ;
struct TYPE_9__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
#define  CT_CRC 132 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
#define  CT_FRAME 131 
#define  CT_OVERFLOW 130 
#define  CT_OVERRUN 129 
#define  CT_UNDERRUN 128 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3 (ct_chan_t *c, int data)
{
	drv_t *d = c->sys;

	if (!d)
		return;

	switch (data) {
	case CT_FRAME:
		FUNC0 (d, ("frame error\n"));
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_IERRORS, 1);
#endif
		break;
	case CT_CRC:
		FUNC0 (d, ("crc error\n"));
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_IERRORS, 1);
#endif
		break;
	case CT_OVERRUN:
		FUNC0 (d, ("overrun error\n"));
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_COLLISIONS, 1);
		FUNC2(d->ifp, IFCOUNTER_IERRORS, 1);
#endif
		break;
	case CT_OVERFLOW:
		FUNC0 (d, ("overflow error\n"));
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_IERRORS, 1);
#endif
		break;
	case CT_UNDERRUN:
		FUNC0 (d, ("underrun error\n"));
		d->timeout = 0;
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_OERRORS, 1);
		d->ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
#endif
		FUNC1 (d);
		break;
	default:
		FUNC0 (d, ("error #%d\n", data));
	}
}