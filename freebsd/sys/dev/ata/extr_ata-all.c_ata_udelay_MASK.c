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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ata_delayed_attach ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

void
FUNC2(int interval)
{
    /* for now just use DELAY, the timer/sleep subsystems are not there yet */
    if (1 || interval < (1000000/hz) || ata_delayed_attach)
	FUNC0(interval);
    else
	FUNC1("ataslp", interval/(1000000/hz));
}