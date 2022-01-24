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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct resource*) ; 

__attribute__((used)) static int
FUNC3(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
	int res;

	if ((res = FUNC2(r)) != 0)
		return (res);

	switch (type) {
	case SYS_RES_IOPORT:
	case SYS_RES_MEMORY:
	case SYS_RES_IRQ:
		res = FUNC0(FUNC1(dev), child,
		    type, rid, r);
		break;
	default:
		break;
	}

	return (res);
}