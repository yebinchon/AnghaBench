#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  devbuf ;
struct TYPE_8__ {TYPE_2__* dinfo; } ;
struct TYPE_7__ {int selected; int position; } ;
struct TYPE_6__ {TYPE_1__* devices; } ;
struct TYPE_5__ {char* device_name; int /*<<< orphan*/  unit_number; } ;

/* Variables and functions */
 scalar_t__ Cflag ; 
 scalar_t__ Iflag ; 
 scalar_t__ Tflag ; 
 TYPE_4__ cur ; 
 TYPE_3__* dev_select ; 
 int maxshowdevs ; 
 int num_devices ; 
 scalar_t__ oflag ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ xflag ; 

__attribute__((used)) static void
FUNC2(void)
{
	int i, printed;
	char devbuf[256];

	/*
	 * If xflag is set, we need a per-loop header, not a page header, so
	 * just return.  We'll print the header in devstats().
	 */
	if (xflag > 0)
		return;

	if (Tflag > 0)
		(void)FUNC0("       tty");
	for (i = 0, printed=0;(i < num_devices) && (printed < maxshowdevs);i++){
		int di;
		if ((dev_select[i].selected != 0)
		 && (dev_select[i].selected <= maxshowdevs)) {
			di = dev_select[i].position;
			FUNC1(devbuf, sizeof(devbuf), "%s%d", 
					    cur.dinfo->devices[di].device_name,
					    cur.dinfo->devices[di].unit_number);
			if (oflag > 0)
				(void)FUNC0("%13.6s ", devbuf);
			else
				FUNC0("%16.6s ", devbuf);
			printed++;
		}
	}
	if (Cflag > 0)
		(void)FUNC0("            cpu\n");
	else
		(void)FUNC0("\n");

	if (Tflag > 0)
		(void)FUNC0(" tin  tout");

	for (i=0, printed = 0;(i < num_devices) && (printed < maxshowdevs);i++){
		if ((dev_select[i].selected != 0)
		 && (dev_select[i].selected <= maxshowdevs)) {
			if (oflag > 0) {
				if (Iflag == 0)
					(void)FUNC0(" sps tps msps ");
				else
					(void)FUNC0(" blk xfr msps ");
			} else {
				if (Iflag == 0)
					FUNC0(" KB/t  tps  MB/s ");
				else
					FUNC0(" KB/t xfrs    MB ");
			}
			printed++;
		}
	}
	if (Cflag > 0)
		(void)FUNC0(" us ni sy in id\n");
	else
		FUNC0("\n");

}