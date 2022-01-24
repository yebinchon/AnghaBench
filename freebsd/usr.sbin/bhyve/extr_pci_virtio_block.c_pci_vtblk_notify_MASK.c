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
struct vqueue_info {int dummy; } ;
struct pci_vtblk_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_vtblk_softc*,struct vqueue_info*) ; 
 scalar_t__ FUNC1 (struct vqueue_info*) ; 

__attribute__((used)) static void
FUNC2(void *vsc, struct vqueue_info *vq)
{
	struct pci_vtblk_softc *sc = vsc;

	while (FUNC1(vq))
		FUNC0(sc, vq);
}