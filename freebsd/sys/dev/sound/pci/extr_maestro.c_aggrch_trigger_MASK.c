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
struct agg_rchinfo {int /*<<< orphan*/  stereo; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  PCMTRIG_ABORT 131 
#define  PCMTRIG_EMLDMARD 130 
#define  PCMTRIG_START 129 
#define  PCMTRIG_STOP 128 
 int /*<<< orphan*/  FUNC0 (struct agg_rchinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct agg_rchinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct agg_rchinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct agg_rchinfo*) ; 

__attribute__((used)) static int
FUNC4(kobj_t obj, void *sc, int go)
{
	struct agg_rchinfo *ch = sc;

	switch (go) {
	case PCMTRIG_EMLDMARD:
		if (ch->stereo)
			FUNC1(ch);
		else
			FUNC0(ch);
		break;
	case PCMTRIG_START:
		FUNC2(ch);
		break;
	case PCMTRIG_ABORT:
	case PCMTRIG_STOP:
		FUNC3(ch);
		break;
	}
	return 0;
}