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
struct vtballoon_softc {int /*<<< orphan*/  vtballoon_deflate_vq; int /*<<< orphan*/  vtballoon_inflate_vq; int /*<<< orphan*/  vtballoon_dev; } ;
struct vq_alloc_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vq_alloc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct vtballoon_softc*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct vq_alloc_info*) ; 
 int /*<<< orphan*/  vtballoon_vq_intr ; 

__attribute__((used)) static int
FUNC3(struct vtballoon_softc *sc)
{
	device_t dev;
	struct vq_alloc_info vq_info[2];
	int nvqs;

	dev = sc->vtballoon_dev;
	nvqs = 2;

	FUNC0(&vq_info[0], 0, vtballoon_vq_intr, sc,
	    &sc->vtballoon_inflate_vq, "%s inflate", FUNC1(dev));

	FUNC0(&vq_info[1], 0, vtballoon_vq_intr, sc,
	    &sc->vtballoon_deflate_vq, "%s deflate", FUNC1(dev));

	return (FUNC2(dev, 0, nvqs, vq_info));
}