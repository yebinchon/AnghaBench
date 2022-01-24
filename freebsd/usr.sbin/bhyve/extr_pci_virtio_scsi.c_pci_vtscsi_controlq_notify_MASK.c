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
struct pci_vtscsi_softc {int dummy; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 int VTSCSI_MAXSEG ; 
 int /*<<< orphan*/  FUNC0 (void*,int,struct iovec*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 size_t FUNC2 (struct iovec*,int /*<<< orphan*/ ,void**) ; 
 int FUNC3 (struct pci_vtscsi_softc*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct vqueue_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vqueue_info*,int /*<<< orphan*/ *,struct iovec*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct vqueue_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct vqueue_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(void *vsc, struct vqueue_info *vq)
{
	struct pci_vtscsi_softc *sc;
	struct iovec iov[VTSCSI_MAXSEG];
	uint16_t idx, n;
	void *buf = NULL;
	size_t bufsize;
	int iolen;

	sc = vsc;

	while (FUNC6(vq)) {
		n = FUNC5(vq, &idx, iov, VTSCSI_MAXSEG, NULL);
		bufsize = FUNC2(iov, n, &buf);
		iolen = FUNC3(sc, buf, bufsize);
		FUNC0(buf + bufsize - iolen, iolen, iov, n,
		    bufsize - iolen);

		/*
		 * Release this chain and handle more
		 */
		FUNC7(vq, idx, iolen);
	}
	FUNC4(vq, 1);	/* Generate interrupt if appropriate. */
	FUNC1(buf);
}