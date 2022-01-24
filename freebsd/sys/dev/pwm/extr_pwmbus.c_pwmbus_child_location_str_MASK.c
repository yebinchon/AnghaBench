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
struct pwmbus_ivars {int pi_channel; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct pwmbus_ivars* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, char *buf, size_t blen)
{
	struct pwmbus_ivars *ivars;

	ivars = FUNC0(child);
	FUNC3(buf, blen, "hwdev=%s channel=%u", 
	    FUNC1(FUNC2(dev)), ivars->pi_channel);

	return (0);
}