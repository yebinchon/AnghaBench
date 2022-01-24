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
typedef  int /*<<< orphan*/  uint16_t ;
struct dc_softc {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dc_softc*) ; 
 scalar_t__ FUNC1 (struct dc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct dc_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_softc*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct dc_softc *sc, caddr_t dest, int off, int cnt, int be)
{
	int i;
	uint16_t word = 0, *ptr;

	for (i = 0; i < cnt; i++) {
		if (FUNC0(sc))
			FUNC4(sc, off + i, &word);
		else if (FUNC1(sc))
			FUNC5(sc, off + i, &word);
		else
			FUNC3(sc, off + i, &word);
		ptr = (uint16_t *)(dest + (i * 2));
		if (be)
			*ptr = FUNC2(word);
		else
			*ptr = FUNC6(word);
	}
}