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
typedef  int uint32_t ;
struct vtcon_softc {int vtcon_flags; int /*<<< orphan*/  vtcon_ctrl_task; struct virtqueue* vtcon_ctrl_rxvq; } ;
struct virtqueue {int dummy; } ;
struct virtio_console_control {int dummy; } ;

/* Variables and functions */
 int VTCON_FLAG_DETACHED ; 
 int /*<<< orphan*/  FUNC0 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 struct virtio_console_control* FUNC3 (struct virtqueue*,int*) ; 
 scalar_t__ FUNC4 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct vtcon_softc*,struct virtio_console_control*) ; 
 int /*<<< orphan*/  FUNC7 (struct vtcon_softc*,struct virtio_console_control*,void*,size_t) ; 

__attribute__((used)) static void
FUNC8(void *xsc, int pending)
{
	struct vtcon_softc *sc;
	struct virtqueue *vq;
	struct virtio_console_control *control;
	void *data;
	size_t data_len;
	int detached;
	uint32_t len;

	sc = xsc;
	vq = sc->vtcon_ctrl_rxvq;

	FUNC0(sc);

	while ((detached = (sc->vtcon_flags & VTCON_FLAG_DETACHED)) == 0) {
		control = FUNC3(vq, &len);
		if (control == NULL)
			break;

		if (len > sizeof(struct virtio_console_control)) {
			data = (void *) &control[1];
			data_len = len - sizeof(struct virtio_console_control);
		} else {
			data = NULL;
			data_len = 0;
		}

		FUNC1(sc);
		FUNC7(sc, control, data, data_len);
		FUNC0(sc);
		FUNC6(sc, control);
	}

	if (!detached) {
		FUNC5(vq);
		if (FUNC4(vq) != 0)
			FUNC2(taskqueue_thread,
			    &sc->vtcon_ctrl_task);
	}

	FUNC1(sc);
}