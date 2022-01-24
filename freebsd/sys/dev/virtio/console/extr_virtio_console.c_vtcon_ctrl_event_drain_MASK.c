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
struct vtcon_softc {struct virtqueue* vtcon_ctrl_rxvq; } ;
struct virtqueue {int dummy; } ;
struct virtio_console_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC0 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vtcon_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_console_control*,int /*<<< orphan*/ ) ; 
 struct virtio_console_control* FUNC3 (struct virtqueue*,int*) ; 

__attribute__((used)) static void
FUNC4(struct vtcon_softc *sc)
{
	struct virtio_console_control *control;
	struct virtqueue *vq;
	int last;

	vq = sc->vtcon_ctrl_rxvq;
	last = 0;

	if (vq == NULL)
		return;

	FUNC0(sc);
	while ((control = FUNC3(vq, &last)) != NULL)
		FUNC2(control, M_DEVBUF);
	FUNC1(sc);
}