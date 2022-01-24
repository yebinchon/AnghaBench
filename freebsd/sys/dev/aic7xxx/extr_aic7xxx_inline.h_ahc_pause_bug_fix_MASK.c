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
struct ahc_softc {int features; } ;

/* Variables and functions */
 int AHC_ULTRA2 ; 
 int /*<<< orphan*/  CCSCBCTL ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC1(struct ahc_softc *ahc)
{
	if ((ahc->features & AHC_ULTRA2) != 0)
		(void)FUNC0(ahc, CCSCBCTL);
}