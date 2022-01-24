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
typedef  int /*<<< orphan*/  timebuf ;
typedef  int suseconds_t ;
struct iovlist {int dummy; } ;
struct TYPE_2__ {int usec; int /*<<< orphan*/  tm; } ;
struct filed {scalar_t__ f_type; int f_prevpri; TYPE_1__ f_lasttime; } ;
typedef  int /*<<< orphan*/  priority_number ;

/* Variables and functions */
 scalar_t__ F_WALL ; 
 int /*<<< orphan*/  FUNC0 (struct filed*,struct iovlist*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iovlist*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct iovlist*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 int FUNC4 (char*,int,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct filed *f, const char *hostname, const char *app_name,
    const char *procid, const char *msgid, const char *structured_data,
    const char *msg, int flags)
{
	struct iovlist il;
	suseconds_t usec;
	int i;
	char timebuf[33], priority_number[5];

	FUNC2(&il);
	if (f->f_type == F_WALL)
		FUNC1(&il, "\r\n\aMessage from syslogd ...\r\n");
	FUNC1(&il, "<");
	FUNC3(priority_number, sizeof(priority_number), "%d", f->f_prevpri);
	FUNC1(&il, priority_number);
	FUNC1(&il, ">1 ");
	if (FUNC4(timebuf, sizeof(timebuf), "%FT%T.______%z",
	    &f->f_lasttime.tm) == sizeof(timebuf) - 2) {
		/* Add colon to the time zone offset, which %z doesn't do. */
		timebuf[32] = '\0';
		timebuf[31] = timebuf[30];
		timebuf[30] = timebuf[29];
		timebuf[29] = ':';

		/* Overwrite space for microseconds with actual value. */
		usec = f->f_lasttime.usec;
		for (i = 25; i >= 20; --i) {
			timebuf[i] = usec % 10 + '0';
			usec /= 10;
		}
		FUNC1(&il, timebuf);
	} else
		FUNC1(&il, "-");
	FUNC1(&il, " ");
	FUNC1(&il, hostname);
	FUNC1(&il, " ");
	FUNC1(&il, app_name == NULL ? "-" : app_name);
	FUNC1(&il, " ");
	FUNC1(&il, procid == NULL ? "-" : procid);
	FUNC1(&il, " ");
	FUNC1(&il, msgid == NULL ? "-" : msgid);
	FUNC1(&il, " ");
	FUNC1(&il, structured_data == NULL ? "-" : structured_data);
	FUNC1(&il, " ");
	FUNC1(&il, msg);

	FUNC0(f, &il, flags);
}