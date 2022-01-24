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
typedef  int /*<<< orphan*/  u_int ;
struct vga_pci_softc {scalar_t__ vga_msi_child; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int ENXIO ; 
 struct vga_pci_softc* FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,int,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, int count,
    const u_int *vectors)
{
	struct vga_pci_softc *sc;

	sc = FUNC0(dev);
	if (sc->vga_msi_child != child)
		return (ENXIO);
	return (FUNC1(dev, count, vectors));
}