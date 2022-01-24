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
typedef  int /*<<< orphan*/  uint32_t ;
struct fwohci_softc {int dummy; } ;
struct firewire_comm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OHCI_CYCLETIMER ; 
 int /*<<< orphan*/  FUNC0 (struct fwohci_softc*,int /*<<< orphan*/ ) ; 

uint32_t
FUNC1(struct firewire_comm *fc)
{
	struct fwohci_softc *sc = (struct fwohci_softc *)fc;
	return (FUNC0(sc, OHCI_CYCLETIMER));
}