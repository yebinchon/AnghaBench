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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sc_info {int /*<<< orphan*/  csh; int /*<<< orphan*/  cst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct sc_info *sc, int regno, u_int32_t data, int size)
{
	switch (size) {
	case 1:
		FUNC0(sc->cst, sc->csh, regno, data);
		break;
	case 2:
		FUNC1(sc->cst, sc->csh, regno, data);
		break;
	case 4:
		FUNC2(sc->cst, sc->csh, regno, data);
		break;
	}
}