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
struct ess_info {int dummy; } ;
struct ess_chinfo {int stopping; int hwch; struct ess_info* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ess_info*,int) ; 
 int FUNC2 (struct ess_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ess_info*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct ess_chinfo *ch)
{
	struct ess_info *sc = ch->parent;

	FUNC0(FUNC5("ess_stop\n"));
	ch->stopping = 1;
	if (ch->hwch == 1)
		FUNC4(sc, 0xb8, FUNC2(sc, 0xb8) & ~0x04);
	else
		FUNC3(sc, 0x78, FUNC1(sc, 0x78) & ~0x10);
	FUNC0(FUNC5("done with stop\n"));
	return 0;
}