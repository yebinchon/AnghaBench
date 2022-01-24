#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct scb {TYPE_1__* hscb; } ;
struct ahd_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sgptr; } ;

/* Variables and functions */
 int SG_STATUS_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct ahd_softc*,struct scb*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*,struct scb*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC3(struct ahd_softc *ahd, struct scb *scb)
{
	uint32_t sgptr;

	sgptr = FUNC2(scb->hscb->sgptr);
	if ((sgptr & SG_STATUS_VALID) != 0)
		FUNC1(ahd, scb);
	else
		FUNC0(ahd, scb);
}