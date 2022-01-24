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
struct sc_info {int /*<<< orphan*/  lock; } ;
struct sc_chinfo {struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct sc_chinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct sc_chinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *data, int go)
{
	struct	sc_chinfo *ch = data;
	struct sc_info *sc = ch->parent;

	FUNC2(sc->lock);
	switch(go) {
	case PCMTRIG_START:
		FUNC0(ch);
		break;
	case PCMTRIG_STOP:
	case PCMTRIG_ABORT:
		FUNC1(ch);
		break;
	}
	FUNC3(sc->lock);
	return 0;
}