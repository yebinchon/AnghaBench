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
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DBG_WRITE ; 
 int /*<<< orphan*/  DS1672_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int
FUNC2(device_t dev, struct timespec *ts)
{
	uint8_t data[4];

	data[0] = (ts->tv_sec >> 0) & 0xff;
	data[1] = (ts->tv_sec >> 8) & 0xff;
	data[2] = (ts->tv_sec >> 16) & 0xff;
	data[3] = (ts->tv_sec >> 24) & 0xff;

	ts->tv_nsec = 0;
	FUNC0(dev, CLOCK_DBG_WRITE, ts);
	return (FUNC1(dev, DS1672_COUNTER, data, 4));
}