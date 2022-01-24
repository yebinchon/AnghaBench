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
struct csa_info {int dummy; } ;
struct csa_chinfo {scalar_t__ dir; struct csa_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCMTRIG_START ; 
 int /*<<< orphan*/  FUNC1 (struct csa_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct csa_chinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct csa_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct csa_info*) ; 

__attribute__((used)) static int
FUNC7(kobj_t obj, void *data, int go)
{
	struct csa_chinfo *ch = data;
	struct csa_info *csa = ch->parent;

	if (!FUNC0(go))
		return 0;

	if (go == PCMTRIG_START) {
		FUNC1(csa, 1);
		FUNC2(ch);
		if (ch->dir == PCMDIR_PLAY)
			FUNC4(csa);
		else
			FUNC3(csa);
	} else {
		if (ch->dir == PCMDIR_PLAY)
			FUNC6(csa);
		else
			FUNC5(csa);
		FUNC1(csa, -1);
	}
	return 0;
}