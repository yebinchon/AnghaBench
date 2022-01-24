#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mbuf {int dummy; } ;
typedef  TYPE_1__* sc_p ;
struct TYPE_3__ {int /*<<< orphan*/ * last_packet; scalar_t__ queueOctets; int /*<<< orphan*/  snd_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*) ; 

__attribute__((used)) static void
FUNC2 (sc_p sc)
{
	struct mbuf *m;

	for (;;) {
		FUNC1(&sc->snd_queue, m);
		if (m == NULL)
			break;
		FUNC0(m);
	}
	sc->queueOctets = 0;
	sc->last_packet = NULL;
}