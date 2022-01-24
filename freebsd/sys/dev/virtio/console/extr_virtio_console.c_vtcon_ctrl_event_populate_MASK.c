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

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct virtqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtqueue*) ; 
 int FUNC2 (struct vtcon_softc*) ; 

__attribute__((used)) static int
FUNC3(struct vtcon_softc *sc)
{
	struct virtqueue *vq;
	int nbufs, error;

	vq = sc->vtcon_ctrl_rxvq;
	error = ENOSPC;

	for (nbufs = 0; !FUNC0(vq); nbufs++) {
		error = FUNC2(sc);
		if (error)
			break;
	}

	if (nbufs > 0) {
		FUNC1(vq);
		error = 0;
	}

	return (error);
}