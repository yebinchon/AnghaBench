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
struct ess_info {int /*<<< orphan*/  io; int /*<<< orphan*/  vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int
FUNC2(struct ess_info *sc, int ch, int go)
{
	FUNC0(ch == 1 || ch == 2, ("bad ch"));
	if (ch == 1)
		FUNC1(sc->vc, 0xf, go? 0x00 : 0x01, 1); /* mask */
	else if (ch == 2)
		FUNC1(sc->io, 0x6, 0x08 | (go? 0x02 : 0x00), 1); /* autoinit */
	return 0;
}