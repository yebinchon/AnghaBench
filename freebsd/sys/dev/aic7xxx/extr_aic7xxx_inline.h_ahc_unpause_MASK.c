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
struct ahc_softc {int /*<<< orphan*/  unpause; } ;

/* Variables and functions */
 int BRKADRINT ; 
 int /*<<< orphan*/  HCNTRL ; 
 int /*<<< orphan*/  INTSTAT ; 
 int SCSIINT ; 
 int SEQINT ; 
 int FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(struct ahc_softc *ahc)
{
	if ((FUNC0(ahc, INTSTAT) & (SCSIINT | SEQINT | BRKADRINT)) == 0)
		FUNC1(ahc, HCNTRL, ahc->unpause);
}