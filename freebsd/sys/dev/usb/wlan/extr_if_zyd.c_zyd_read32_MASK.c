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
typedef  int /*<<< orphan*/  tmp ;
struct zyd_softc {int dummy; } ;
struct zyd_pair {int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  regs ;

/* Variables and functions */
 int /*<<< orphan*/  ZYD_CMD_FLAG_READ ; 
 int /*<<< orphan*/  ZYD_CMD_IORD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct zyd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct zyd_pair*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct zyd_softc *sc, uint16_t reg, uint32_t *val)
{
	struct zyd_pair tmp[2];
	uint16_t regs[2];
	int error;

	regs[0] = FUNC2(FUNC0(reg));
	regs[1] = FUNC2(FUNC1(reg));
	error = FUNC4(sc, ZYD_CMD_IORD, regs, sizeof(regs), tmp, sizeof(tmp),
	    ZYD_CMD_FLAG_READ);
	if (error == 0)
		*val = FUNC3(tmp[0].val) << 16 | FUNC3(tmp[1].val);
	return (error);
}