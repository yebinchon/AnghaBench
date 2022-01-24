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

/* Variables and functions */
 int /*<<< orphan*/  GID_OPERATOR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  iir_cdevsw ; 
 struct cdev* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  sdev_lock ; 
 int sdev_made ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unit ; 

struct cdev *
FUNC3(struct gdt_softc *gdt)
{
    struct cdev *dev;

#ifdef SDEV_PER_HBA
    dev = make_dev(&iir_cdevsw, 0, UID_ROOT, GID_OPERATOR,
                   S_IRUSR | S_IWUSR, "iir%d", unit);
    dev->si_drv1 = gdt;
#else
    FUNC1(&sdev_lock);
    if (sdev_made)
        return (NULL);
    dev = FUNC0(&iir_cdevsw, 0, UID_ROOT, GID_OPERATOR,
                   S_IRUSR | S_IWUSR, "iir");
    sdev_made = 1;
    FUNC2(&sdev_lock);
#endif
    return (dev);
}