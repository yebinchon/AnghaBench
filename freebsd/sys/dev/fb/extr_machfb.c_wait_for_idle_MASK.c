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
struct machfb_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GUI_STAT ; 
 int FUNC0 (struct machfb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct machfb_softc*,int) ; 

__attribute__((used)) static inline void
FUNC2(struct machfb_softc *sc)
{

	FUNC1(sc, 16);
	while ((FUNC0(sc, GUI_STAT) & 1) != 0)
		;
}