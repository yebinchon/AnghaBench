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
typedef  scalar_t__ u_int ;
struct ahc_softc {int msgout_len; int /*<<< orphan*/  msgout_index; scalar_t__* msgout_buf; } ;
struct ahc_devinfo {int channel; int target; int lun; } ;

/* Variables and functions */
 scalar_t__ AHC_ASYNC_XFER_PERIOD ; 
 scalar_t__ MSG_EXTENDED ; 
 scalar_t__ MSG_EXT_PPR ; 
 scalar_t__ MSG_EXT_PPR_LEN ; 
 char* FUNC0 (struct ahc_softc*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
		  u_int period, u_int offset, u_int bus_width,
		  u_int ppr_options)
{
	if (offset == 0)
		period = AHC_ASYNC_XFER_PERIOD;
	ahc->msgout_buf[ahc->msgout_index++] = MSG_EXTENDED;
	ahc->msgout_buf[ahc->msgout_index++] = MSG_EXT_PPR_LEN;
	ahc->msgout_buf[ahc->msgout_index++] = MSG_EXT_PPR;
	ahc->msgout_buf[ahc->msgout_index++] = period;
	ahc->msgout_buf[ahc->msgout_index++] = 0;
	ahc->msgout_buf[ahc->msgout_index++] = offset;
	ahc->msgout_buf[ahc->msgout_index++] = bus_width;
	ahc->msgout_buf[ahc->msgout_index++] = ppr_options;
	ahc->msgout_len += 8;
	if (bootverbose) {
		FUNC1("(%s:%c:%d:%d): Sending PPR bus_width %x, period %x, "
		       "offset %x, ppr_options %x\n", FUNC0(ahc),
		       devinfo->channel, devinfo->target, devinfo->lun,
		       bus_width, period, offset, ppr_options);
	}
}