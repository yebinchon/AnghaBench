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
struct vtscsi_softc {struct virtqueue* vtscsi_request_vq; } ;
struct virtqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*) ; 
 scalar_t__ FUNC3 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct vtscsi_softc*,struct virtqueue*) ; 

__attribute__((used)) static void
FUNC5(void *xsc)
{
	struct vtscsi_softc *sc;
	struct virtqueue *vq;

	sc = xsc;
	vq = sc->vtscsi_request_vq;

again:
	FUNC0(sc);

	FUNC4(sc, sc->vtscsi_request_vq);

	if (FUNC3(vq) != 0) {
		FUNC2(vq);
		FUNC1(sc);
		goto again;
	}

	FUNC1(sc);
}