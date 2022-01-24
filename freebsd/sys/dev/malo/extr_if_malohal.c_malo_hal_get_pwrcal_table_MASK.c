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
typedef  int uint8_t ;
struct malo_hal_caldata {int /*<<< orphan*/  pt_ratetable_20m; } ;
struct malo_hal {int /*<<< orphan*/  mh_flags; scalar_t__ mh_cmdbuf; } ;
struct malo_cmd_caltable {int* caltbl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct malo_hal*) ; 
 int /*<<< orphan*/  FUNC1 (struct malo_hal*) ; 
 int /*<<< orphan*/  MHF_CALDATA ; 
 scalar_t__ FUNC2 (struct malo_hal*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int const*,int) ; 

__attribute__((used)) static int
FUNC4(struct malo_hal *mh, struct malo_hal_caldata *cal)
{
	const uint8_t *data;
	int len;

	FUNC0(mh);
	/* NB: we hold the lock so it's ok to use cmdbuf */
	data = ((const struct malo_cmd_caltable *) mh->mh_cmdbuf)->caltbl;
	if (FUNC2(mh, 33, 0) == 0) {
		len = (data[2] | (data[3] << 8)) - 12;
		/* XXX validate len */
		FUNC3(cal->pt_ratetable_20m, &data[12], len);	
	}
	mh->mh_flags |= MHF_CALDATA;
	FUNC1(mh);

	return 0;
}