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
struct ess_chinfo {int /*<<< orphan*/  hwch; int /*<<< orphan*/  dir; int /*<<< orphan*/  buffer; struct ess_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  PCMTRIG_ABORT 130 
 int /*<<< orphan*/  FUNC1 (int) ; 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC2 (struct ess_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ess_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct ess_chinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct ess_chinfo*) ; 
 int /*<<< orphan*/  FUNC7 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(kobj_t obj, void *data, int go)
{
	struct ess_chinfo *ch = data;
	struct ess_info *sc = ch->parent;

	if (!FUNC1(go))
		return 0;

	FUNC0(FUNC8("esschan_trigger: %d\n",go));

	FUNC4(sc);
	switch (go) {
	case PCMTRIG_START:
		FUNC2(sc, ch->hwch, FUNC9(ch->buffer), FUNC10(ch->buffer), ch->dir);
		FUNC3(sc, ch->hwch, 1);
		FUNC5(ch);
		break;

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
	default:
		FUNC6(ch);
		break;
	}
	FUNC7(sc);
	return 0;
}