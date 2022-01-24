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
typedef  union ccb {int dummy; } ccb ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct umass_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct umass_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UDMASS_SCSI ; 
 int /*<<< orphan*/  FUNC1 (union ccb*) ; 

__attribute__((used)) static void
FUNC2(struct umass_softc *sc, union ccb *ccb, uint32_t residue,
    uint8_t status)
{
	FUNC0(sc, UDMASS_SCSI, "Test unit ready "
	    "returned status %d\n", status);

	FUNC1(ccb);
}