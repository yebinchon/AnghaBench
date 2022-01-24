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
struct snd_midi {int flags; scalar_t__ hiwat; int /*<<< orphan*/  qlock; scalar_t__ async; int /*<<< orphan*/  wsel; scalar_t__ wchan; int /*<<< orphan*/  outq; int /*<<< orphan*/  cookie; } ;
typedef  int /*<<< orphan*/  MIDI_TYPE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_midi*,int /*<<< orphan*/ ,int) ; 
 int M_TXEN ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 

int
FUNC15(struct snd_midi *m, MIDI_TYPE *buf, int size)
{
	int used;

/*
 * XXX: locking flub
 */
	if (!(m->flags & M_TXEN))
		return 0;

	FUNC4(2, FUNC12("midi_out: %p\n", m));
	FUNC10(&m->qlock);
	used = FUNC5(size, FUNC3(m->outq));
	FUNC4(3, FUNC12("midi_out: used %d\n", used));
	if (used)
		FUNC1(m->outq, buf, used);
	if (FUNC2(m->outq)) {
		m->flags &= ~M_TXEN;
		FUNC6(m, m->cookie, m->flags);
	}
	if (used && FUNC0(m->outq) > m->hiwat) {
		if (m->wchan) {
			FUNC14(&m->wchan);
			m->wchan = 0;
		}
		FUNC13(&m->wsel);
		if (m->async) {
			FUNC7(m->async);
			FUNC9(m->async, SIGIO);
			FUNC8(m->async);
		}
	}
	FUNC11(&m->qlock);
	return used;
}