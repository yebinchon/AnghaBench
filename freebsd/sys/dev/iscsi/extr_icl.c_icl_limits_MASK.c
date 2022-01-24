#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct icl_module {int (* im_limits ) (struct icl_drv_limits*) ;} ;
struct icl_drv_limits {scalar_t__ idl_max_recv_data_segment_length; scalar_t__ idl_max_send_data_segment_length; scalar_t__ idl_max_burst_length; scalar_t__ idl_first_burst_length; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (scalar_t__,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct icl_drv_limits*,int) ; 
 struct icl_module* FUNC2 (char const*,int,int) ; 
 TYPE_1__* sc ; 
 int FUNC3 (struct icl_drv_limits*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(const char *offload, bool iser, struct icl_drv_limits *idl)
{
	struct icl_module *im;
	int error;

	FUNC1(idl, sizeof(*idl));
	FUNC4(&sc->sc_lock);
	im = FUNC2(offload, iser, false);
	if (im == NULL) {
		FUNC5(&sc->sc_lock);
		return (ENXIO);
	}

	error = im->im_limits(idl);
	FUNC5(&sc->sc_lock);

	/*
	 * Validate the limits provided by the driver against values allowed by
	 * the iSCSI RFC.  0 means iscsid/ctld should pick a reasonable value.
	 *
	 * Note that max_send_dsl is an internal implementation detail and not
	 * part of the RFC.
	 */
#define OUT_OF_RANGE(x, lo, hi) ((x) != 0 && ((x) < (lo) || (x) > (hi)))
	if (error == 0 &&
	    (OUT_OF_RANGE(idl->idl_max_recv_data_segment_length, 512, 16777215) ||
	    OUT_OF_RANGE(idl->idl_max_send_data_segment_length, 512, 16777215) ||
	    OUT_OF_RANGE(idl->idl_max_burst_length, 512, 16777215) ||
	    OUT_OF_RANGE(idl->idl_first_burst_length, 512, 16777215))) {
		error = EINVAL;
	}
#undef OUT_OF_RANGE

	/*
	 * If both first_burst and max_burst are provided then first_burst must
	 * not exceed max_burst.
	 */
	if (error == 0 && idl->idl_first_burst_length > 0 &&
	    idl->idl_max_burst_length > 0 &&
	    idl->idl_first_burst_length > idl->idl_max_burst_length) {
		error = EINVAL;
	}

	return (error);
}