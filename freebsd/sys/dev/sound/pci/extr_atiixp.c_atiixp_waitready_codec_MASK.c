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
struct atiixp_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_REG_PHYS_OUT_ADDR ; 
 int ATI_REG_PHYS_OUT_ADDR_EN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct atiixp_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct atiixp_info *sc)
{
	int timeout = 500;

	do {
		if ((FUNC1(sc, ATI_REG_PHYS_OUT_ADDR) &
		    ATI_REG_PHYS_OUT_ADDR_EN) == 0)
			return (0);
		FUNC0(1);
	} while (--timeout);

	return (-1);
}