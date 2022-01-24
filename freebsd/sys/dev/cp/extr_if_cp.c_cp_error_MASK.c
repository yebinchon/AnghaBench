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
typedef  TYPE_2__ cp_chan_t ;
struct TYPE_9__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
#define  CP_CRC 132 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
#define  CP_FRAME 131 
#define  CP_OVERFLOW 130 
#define  CP_OVERRUN 129 
#define  CP_UNDERRUN 128 
 int /*<<< orphan*/  IFCOUNTER_COLLISIONS ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3 (cp_chan_t *c, int data)
{
	drv_t *d = c->sys;

	switch (data) {
	case CP_FRAME:
		FUNC0 (d, ("frame error\n"));
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_IERRORS, 1);
#endif
		break;
	case CP_CRC:
		FUNC0 (d, ("crc error\n"));
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_IERRORS, 1);
#endif
		break;
	case CP_OVERRUN:
		FUNC0 (d, ("overrun error\n"));
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_COLLISIONS, 1);
		FUNC2(d->ifp, IFCOUNTER_IERRORS, 1);
#endif
		break;
	case CP_OVERFLOW:
		FUNC0 (d, ("overflow error\n"));
#ifndef NETGRAPH
		FUNC2(d->ifp, IFCOUNTER_IERRORS, 1);
#endif
		break;
	case CP_UNDERRUN:
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
		break;
	}
}