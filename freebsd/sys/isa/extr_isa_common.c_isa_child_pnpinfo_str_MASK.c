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
struct isa_device {scalar_t__ id_vendorid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct isa_device* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,char*) ; 

__attribute__((used)) static int
FUNC3(device_t bus, device_t child, char *buf,
    size_t buflen)
{
	struct isa_device *idev = FUNC0(child);

	if (idev->id_vendorid)
		FUNC2(buf, buflen, "pnpid=%s",
		    FUNC1(idev->id_vendorid));
	return (0);
}