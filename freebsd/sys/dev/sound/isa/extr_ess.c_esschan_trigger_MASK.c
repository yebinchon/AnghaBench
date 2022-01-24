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
struct ess_chinfo {int run; int /*<<< orphan*/  buffer; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC1 (struct ess_chinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_chinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *data, int go)
{
	struct ess_chinfo *ch = data;

	if (!FUNC0(go))
		return 0;

	switch (go) {
	case PCMTRIG_START:
		ch->run = 1;
		FUNC3(ch->buffer, go);
		FUNC1(ch);
		break;

	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
	default:
		FUNC2(ch);
		break;
	}
	return 0;
}