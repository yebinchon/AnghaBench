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
struct smbus_ivar {scalar_t__ addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct smbus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(device_t parent, device_t child, char *buf,
    size_t buflen)
{
	struct smbus_ivar *devi;

	devi = FUNC0(child);
	if (devi->addr != 0)
		FUNC1(buf, buflen, "addr=0x%x", devi->addr);
	else if (buflen)
		buf[0] = 0;
	return (0);
}