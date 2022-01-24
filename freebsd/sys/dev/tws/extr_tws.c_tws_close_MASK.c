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
struct tws_softc {int dummy; } ;
struct thread {int dummy; } ;
struct cdev {struct tws_softc* si_drv1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tws_softc*,char*,struct cdev*,int) ; 

int
FUNC1(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
    struct tws_softc *sc = dev->si_drv1;

    if ( sc )
        FUNC0(sc, "entry", dev, fflag);
    return (0);
}