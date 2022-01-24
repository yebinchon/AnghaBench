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
struct vtrnd_softc {int /*<<< orphan*/  vtrnd_vq; } ;
struct vq_alloc_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vq_alloc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct vtrnd_softc*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct vtrnd_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct vq_alloc_info*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct vtrnd_softc *sc;
	struct vq_alloc_info vq_info;

	sc = FUNC2(dev);

	FUNC0(&vq_info, 0, NULL, sc, &sc->vtrnd_vq,
	    "%s request", FUNC1(dev));

	return (FUNC3(dev, 0, 1, &vq_info));
}