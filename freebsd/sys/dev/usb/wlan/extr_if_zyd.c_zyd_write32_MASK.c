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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct zyd_softc {int dummy; } ;
struct zyd_pair {void* val; void* reg; } ;
typedef  int /*<<< orphan*/  pair ;

/* Variables and functions */
 int /*<<< orphan*/  ZYD_CMD_IOWR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int) ; 
 int FUNC3 (struct zyd_softc*,int /*<<< orphan*/ ,struct zyd_pair*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct zyd_softc *sc, uint16_t reg, uint32_t val)
{
	struct zyd_pair pair[2];

	pair[0].reg = FUNC2(FUNC0(reg));
	pair[0].val = FUNC2(val >> 16);
	pair[1].reg = FUNC2(FUNC1(reg));
	pair[1].val = FUNC2(val & 0xffff);

	return FUNC3(sc, ZYD_CMD_IOWR, pair, sizeof(pair), NULL, 0, 0);
}