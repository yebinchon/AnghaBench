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
struct timeval {scalar_t__ tv_sec; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int STATUS_READY ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint8_t *status)
{
	struct timeval now, tout;
	int err;

	FUNC1(&tout);
	tout.tv_sec += 3;
	do {
		FUNC1(&now);
		if (now.tv_sec > tout.tv_sec)
			err = ETIMEDOUT;
		else
			err = FUNC0(dev, status);
	} while (err == 0 && !(*status & STATUS_READY));
	return (err);
}