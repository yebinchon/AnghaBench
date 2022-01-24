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
typedef  int uint8_t ;
struct ahc_softc {int features; int qinfifonext; } ;

/* Variables and functions */
 int AHC_QUEUE_REGS ; 
 int /*<<< orphan*/  QINPOS ; 
 int /*<<< orphan*/  SNSCB_QOFF ; 
 int FUNC0 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct ahc_softc *ahc)
{
	uint8_t qinpos;
	uint8_t diff;

	if ((ahc->features & AHC_QUEUE_REGS) != 0) {
		qinpos = FUNC0(ahc, SNSCB_QOFF);
		FUNC1(ahc, SNSCB_QOFF, qinpos);
	} else
		qinpos = FUNC0(ahc, QINPOS);
	diff = ahc->qinfifonext - qinpos;
	return (diff);
}