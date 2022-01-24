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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct rl_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rl_softc*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct rl_softc *sc, uint8_t *dest, int off, int cnt, int swap)
{
	int			i;
	uint16_t		word = 0, *ptr;

	for (i = 0; i < cnt; i++) {
		FUNC1(sc, off + i, &word);
		ptr = (uint16_t *)(dest + (i * 2));
		if (swap)
			*ptr = FUNC0(word);
		else
			*ptr = word;
	}
}