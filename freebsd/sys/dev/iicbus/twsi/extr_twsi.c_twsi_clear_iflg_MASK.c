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
struct twsi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TWSI_CONTROL_IFLG ; 
 int /*<<< orphan*/  FUNC1 (struct twsi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(struct twsi_softc *sc)
{

	FUNC0(1000);
	FUNC1(sc, TWSI_CONTROL_IFLG);
	FUNC0(1000);
}