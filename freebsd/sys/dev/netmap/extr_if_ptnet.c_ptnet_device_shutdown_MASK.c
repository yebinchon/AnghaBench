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
struct ptnet_softc {int /*<<< orphan*/  iomem; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTNETMAP_PTCTL_DELETE ; 
 int /*<<< orphan*/  PTNET_IO_CSB_GH_BAH ; 
 int /*<<< orphan*/  PTNET_IO_CSB_GH_BAL ; 
 int /*<<< orphan*/  PTNET_IO_CSB_HG_BAH ; 
 int /*<<< orphan*/  PTNET_IO_CSB_HG_BAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ptnet_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ptnet_softc *sc)
{
	FUNC1(sc, PTNETMAP_PTCTL_DELETE);
	FUNC0(sc->iomem, PTNET_IO_CSB_GH_BAH, 0);
	FUNC0(sc->iomem, PTNET_IO_CSB_GH_BAL, 0);
	FUNC0(sc->iomem, PTNET_IO_CSB_HG_BAH, 0);
	FUNC0(sc->iomem, PTNET_IO_CSB_HG_BAL, 0);
}