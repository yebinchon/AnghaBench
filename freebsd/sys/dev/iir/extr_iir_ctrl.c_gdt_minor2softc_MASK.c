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
struct gdt_softc {int dummy; } ;
struct cdev {struct gdt_softc* si_drv1; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int /*<<< orphan*/ * devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 struct gdt_softc* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct gdt_softc *
FUNC3(struct cdev *dev, int minor_no)
{
#ifdef SDEV_PER_HBA

    return (dev->si_drv1);
#else
    devclass_t dc;
    device_t child;

    dc = FUNC0("iir");
    if (dc == NULL)
	return (NULL);
    child = FUNC1(dc, minor_no);
    if (child == NULL)
	return (NULL);
    return (FUNC2(child));
#endif
}