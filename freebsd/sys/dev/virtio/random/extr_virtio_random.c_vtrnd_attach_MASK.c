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
struct vtrnd_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vtrnd_softc**,struct vtrnd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vtrnd_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  g_vtrnd_softc ; 
 int /*<<< orphan*/  memory_order_acquire ; 
 int /*<<< orphan*/  memory_order_release ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  random_vtrnd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vtrnd_feature_desc ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct vtrnd_softc *sc, *exp;
	int error;

	sc = FUNC1(dev);

	FUNC4(dev, vtrnd_feature_desc);
	FUNC7(dev);

	error = FUNC5(dev);
	if (error) {
		FUNC2(dev, "cannot allocate virtqueue\n");
		goto fail;
	}

	exp = NULL;
	if (!FUNC0(&g_vtrnd_softc, &exp, sc,
	    memory_order_release, memory_order_acquire)) {
		error = EEXIST;
		goto fail;
	}
	FUNC3(&random_vtrnd);

fail:
	if (error)
		FUNC6(dev);

	return (error);
}