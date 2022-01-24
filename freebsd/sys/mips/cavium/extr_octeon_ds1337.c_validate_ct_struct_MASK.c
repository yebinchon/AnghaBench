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
struct clocktime {int sec; int min; int hour; int day; int dow; int mon; int year; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static int FUNC1(struct clocktime *ct)
{
    int rc = 0;

    if (!ct)
	return -1;

    FUNC0(ct->sec < 0  || ct->sec > 60,  "second"); /* + Leap sec */
    FUNC0(ct->min < 0  || ct->min > 59,  "minute");
    FUNC0(ct->hour < 0 || ct->hour > 23, "hour");
    FUNC0(ct->day < 1 || ct->day > 31, "day");
    FUNC0(ct->dow < 0 || ct->dow > 6,  "day of week");
    FUNC0(ct->mon < 1  || ct->mon > 12,  "month");
    FUNC0(ct->year > 2037,"year");

    return rc;
}