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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,char*,int,int,int,int,int,int) ; 

int
FUNC5(device_t dev, device_t child, char *buf,
    size_t buflen)
{

	FUNC4(buf, buflen, "slot=%d function=%d dbsf=pci%d:%d:%d:%d",
	    FUNC3(child), FUNC2(child), FUNC1(child),
	    FUNC0(child), FUNC3(child), FUNC2(child));
	return (0);
}