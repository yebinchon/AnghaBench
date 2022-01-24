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
struct TYPE_2__ {int sack_bytes_rexmit; struct sackhole* nexthole; } ;
struct tcpcb {TYPE_1__ sackhint; int /*<<< orphan*/  t_inpcb; } ;
struct sackhole {int /*<<< orphan*/  end; int /*<<< orphan*/  rxmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sackhole* FUNC2 (struct sackhole*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  scblink ; 

struct sackhole *
FUNC3(struct tcpcb *tp, int *sack_bytes_rexmt)
{
	struct sackhole *hole = NULL;

	FUNC0(tp->t_inpcb);
	*sack_bytes_rexmt = tp->sackhint.sack_bytes_rexmit;
	hole = tp->sackhint.nexthole;
	if (hole == NULL || FUNC1(hole->rxmit, hole->end))
		goto out;
	while ((hole = FUNC2(hole, scblink)) != NULL) {
		if (FUNC1(hole->rxmit, hole->end)) {
			tp->sackhint.nexthole = hole;
			break;
		}
	}
out:
	return (hole);
}