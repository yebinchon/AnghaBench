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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct beri_softc {scalar_t__ control_read; scalar_t__ control_write; } ;
typedef  int /*<<< orphan*/  control_reg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct beri_softc*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC1(struct beri_softc *sc, int dir, control_reg_t *c)
{
	uint32_t offset;
	uint16_t src[4];
	uint16_t *cp;
	int i;

	cp = (uint16_t *)c;

	for (i = 0; i < 4; i++)
		src[3 - i] = cp[i];

	offset = dir ? sc->control_write : sc->control_read;
	FUNC0(sc, offset + 0, ((uint32_t *)src)[0]);
	FUNC0(sc, offset + 4, ((uint32_t *)src)[1]);
}