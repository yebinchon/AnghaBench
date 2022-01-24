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
typedef  int u_char ;
struct seq_softc {int /*<<< orphan*/  seq_lock; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
#define  EV_CHN_COMMON 131 
#define  EV_CHN_VOICE 130 
 int EV_SEQ_LOCAL ; 
#define  EV_SYSEX 129 
 int EV_TIMING ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  SEQ_MIDIPUTC 128 
 int FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct seq_softc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC6 (struct seq_softc*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC7 (struct seq_softc*,int,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct seq_softc*,int*) ; 
 int FUNC9 (struct seq_softc*,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (struct seq_softc*,int*) ; 

__attribute__((used)) static int
FUNC11(struct seq_softc *scp, u_char *event)
{
	int ret;
	kobj_t m;

	ret = 0;

	if (event[0] == EV_SEQ_LOCAL)
		ret = FUNC8(scp, event);
	else if (event[0] == EV_TIMING)
		ret = FUNC10(scp, event);
	else if (event[0] != EV_CHN_VOICE &&
		    event[0] != EV_CHN_COMMON &&
		    event[0] != EV_SYSEX &&
	    event[0] != SEQ_MIDIPUTC) {
		ret = 1;
		FUNC0(2, FUNC4("seq_processevent not known %d\n",
		    event[0]));
	} else if (FUNC7(scp, event[1], &m) != 0) {
		ret = 1;
		FUNC0(2, FUNC4("seq_processevent midi unit not found %d\n",
		    event[1]));
	} else
		switch (event[0]) {
		case EV_CHN_VOICE:
			ret = FUNC6(scp, m, event);
			break;
		case EV_CHN_COMMON:
			ret = FUNC5(scp, m, event);
			break;
		case EV_SYSEX:
			ret = FUNC9(scp, m, event);
			break;
		case SEQ_MIDIPUTC:
			FUNC3(&scp->seq_lock);
			ret = FUNC1(m, &event[2], 1);
			FUNC2(&scp->seq_lock);
			break;
		}
	return ret;
}