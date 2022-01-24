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
typedef  int /*<<< orphan*/  uint16_t ;
struct vqueue_info {int dummy; } ;
struct pci_vtrnd_softc {scalar_t__ vrsc_fd; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/  iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vqueue_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vqueue_info*,int /*<<< orphan*/ *,struct iovec*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct vqueue_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(void *vsc, struct vqueue_info *vq)
{
	struct iovec iov;
	struct pci_vtrnd_softc *sc;
	int len;
	uint16_t idx;

	sc = vsc;

	if (sc->vrsc_fd < 0) {
		FUNC3(vq, 0);
		return;
	}

	while (FUNC5(vq)) {
		FUNC4(vq, &idx, &iov, 1, NULL);

		len = FUNC2(sc->vrsc_fd, iov.iov_base, iov.iov_len);

		FUNC0(("vtrnd: vtrnd_notify(): %d\r\n", len));

		/* Catastrophe if unable to read from /dev/random */
		FUNC1(len > 0);

		/*
		 * Release this chain and handle more
		 */
		FUNC6(vq, idx, len);
	}
	FUNC3(vq, 1);	/* Generate interrupt if appropriate. */
}