#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * nexthole; scalar_t__ sack_bytes_rexmit; } ;
struct tcpcb {scalar_t__ snd_numholes; TYPE_1__ sackhint; int /*<<< orphan*/  snd_holes; int /*<<< orphan*/  t_inpcb; } ;
struct sackhole {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 struct sackhole* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tcpcb*,struct sackhole*) ; 

void
FUNC4(struct tcpcb *tp)
{
	struct sackhole *q;

	FUNC0(tp->t_inpcb);
	while ((q = FUNC2(&tp->snd_holes)) != NULL)
		FUNC3(tp, q);
	tp->sackhint.sack_bytes_rexmit = 0;

	FUNC1(tp->snd_numholes == 0, ("tp->snd_numholes == 0"));
	FUNC1(tp->sackhint.nexthole == NULL,
		("tp->sackhint.nexthole == NULL"));
}