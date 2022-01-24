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
typedef  scalar_t__ u_int ;
struct ahc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISCONNECTED_SCBH ; 
 int /*<<< orphan*/  SCBPTR ; 
 int /*<<< orphan*/  SCB_CONTROL ; 
 scalar_t__ SCB_LIST_NULL ; 
 int /*<<< orphan*/  SCB_NEXT ; 
 int /*<<< orphan*/  FUNC0 (struct ahc_softc*) ; 
 scalar_t__ FUNC1 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u_int
FUNC3(struct ahc_softc *ahc, u_int prev, u_int scbptr)
{
	u_int next;

	FUNC2(ahc, SCBPTR, scbptr);
	next = FUNC1(ahc, SCB_NEXT);

	FUNC2(ahc, SCB_CONTROL, 0);

	FUNC0(ahc);

	if (prev != SCB_LIST_NULL) {
		FUNC2(ahc, SCBPTR, prev);
		FUNC2(ahc, SCB_NEXT, next);
	} else
		FUNC2(ahc, DISCONNECTED_SCBH, next);

	return (next);
}