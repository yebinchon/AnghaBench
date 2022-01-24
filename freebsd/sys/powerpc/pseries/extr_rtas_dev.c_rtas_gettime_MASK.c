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
struct timespec {int dummy; } ;
struct clocktime {int year; int mon; int day; int hour; int min; int sec; int nsec; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int cell_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENXIO ; 
 int FUNC0 (struct clocktime*,struct timespec*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int,int*,int*,int*,int*,int*,int*,int*,int*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, struct timespec *ts) {
	struct clocktime ct;
	cell_t tod[8];
	cell_t token;
	int error;
	
	token = FUNC2("get-time-of-day");
	if (token == -1)
		return (ENXIO);
	error = FUNC1(token, 0, 8, &tod[0], &tod[1], &tod[2],
	    &tod[3], &tod[4], &tod[5], &tod[6], &tod[7]);
	if (error < 0)
		return (ENXIO);
	if (tod[0] != 0)
		return ((tod[0] == -1) ? ENXIO : EAGAIN);

	ct.year = tod[1];
	ct.mon  = tod[2];
	ct.day  = tod[3];
	ct.hour = tod[4];
	ct.min  = tod[5];
	ct.sec  = tod[6];
	ct.nsec = tod[7];

	return (FUNC0(&ct, ts));
}