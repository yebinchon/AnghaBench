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
struct t4_regdump {int version; int /*<<< orphan*/  len; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adapter*) ; 
 int FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct adapter *sc, struct t4_regdump *regs, uint8_t *buf)
{

	regs->version = FUNC0(sc) | FUNC1(sc) << 10;
	FUNC2(sc, buf, regs->len);
}