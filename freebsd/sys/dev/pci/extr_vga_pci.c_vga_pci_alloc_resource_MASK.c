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
typedef  int /*<<< orphan*/  u_int ;
struct vga_resource {struct resource* vr_res; int /*<<< orphan*/  vr_refs; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  SYS_RES_IOPORT 129 
#define  SYS_RES_MEMORY 128 
 struct resource* FUNC0 (int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vga_resource* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct resource *
FUNC3(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct vga_resource *vr;

	switch (type) {
	case SYS_RES_MEMORY:
	case SYS_RES_IOPORT:
		/*
		 * For BARs, we cache the resource so that we only allocate it
		 * from the PCI bus once.
		 */
		vr = FUNC2(FUNC1(dev), *rid);
		if (vr == NULL)
			return (NULL);
		if (vr->vr_res == NULL)
			vr->vr_res = FUNC0(dev, type, rid, start,
			    end, count, flags);
		if (vr->vr_res != NULL)
			vr->vr_refs++;
		return (vr->vr_res);
	}
	return (FUNC0(dev, type, rid, start, end, count, flags));
}