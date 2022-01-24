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
struct TYPE_2__ {struct sackhole* nexthole; } ;
struct tcpcb {int /*<<< orphan*/  snd_holes; TYPE_1__ sackhint; } ;
struct sackhole {int dummy; } ;

/* Variables and functions */
 struct sackhole* FUNC0 (struct sackhole*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sackhole*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scblink ; 
 int /*<<< orphan*/  FUNC2 (struct tcpcb*,struct sackhole*) ; 

__attribute__((used)) static void
FUNC3(struct tcpcb *tp, struct sackhole *hole)
{

	/* Update SACK hint. */
	if (tp->sackhint.nexthole == hole)
		tp->sackhint.nexthole = FUNC0(hole, scblink);

	/* Remove this SACK hole. */
	FUNC1(&tp->snd_holes, hole, scblink);

	/* Free this SACK hole. */
	FUNC2(tp, hole);
}