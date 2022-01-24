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
struct vtblk_softc {int /*<<< orphan*/  vtblk_vq; int /*<<< orphan*/  vtblk_max_nsegs; int /*<<< orphan*/  vtblk_dev; } ;
struct vq_alloc_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vq_alloc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtblk_softc*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct vq_alloc_info*) ; 
 int /*<<< orphan*/  vtblk_vq_intr ; 

__attribute__((used)) static int
FUNC3(struct vtblk_softc *sc)
{
	device_t dev;
	struct vq_alloc_info vq_info;

	dev = sc->vtblk_dev;

	FUNC0(&vq_info, sc->vtblk_max_nsegs,
	    vtblk_vq_intr, sc, &sc->vtblk_vq,
	    "%s request", FUNC1(dev));

	return (FUNC2(dev, 0, 1, &vq_info));
}