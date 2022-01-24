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
struct vtscsi_softc {struct virtqueue* vtscsi_event_vq; } ;
struct virtqueue {int dummy; } ;
struct virtio_scsi_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vtscsi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtscsi_softc*) ; 
 struct virtio_scsi_event* FUNC2 (struct virtqueue*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct virtqueue*) ; 
 scalar_t__ FUNC4 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vtscsi_softc*,struct virtio_scsi_event*) ; 

__attribute__((used)) static void
FUNC6(void *xsc)
{
	struct vtscsi_softc *sc;
	struct virtqueue *vq;
	struct virtio_scsi_event *event;

	sc = xsc;
	vq = sc->vtscsi_event_vq;

again:
	FUNC0(sc);

	while ((event = FUNC2(vq, NULL)) != NULL)
		FUNC5(sc, event);

	if (FUNC4(vq) != 0) {
		FUNC3(vq);
		FUNC1(sc);
		goto again;
	}

	FUNC1(sc);
}