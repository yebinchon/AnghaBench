#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  union ccb {int dummy; } ccb ;
struct cam_sim {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cam_mtx; } ;
typedef  TYPE_1__ isc_session_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cam_sim*,union ccb*) ; 

__attribute__((used)) static __inline int
FUNC4(struct cam_sim *sim, union ccb *ccb)
{
     int		ret;

#if __FreeBSD_version < 700000
     ret = FUNC3(sim, ccb);
#else
     isc_session_t	*sp = cam_sim_softc(sim);

     mtx_unlock(&sp->cam_mtx);
     ret = scsi_encap(sim, ccb);
     mtx_lock(&sp->cam_mtx);
#endif
     return ret;
}