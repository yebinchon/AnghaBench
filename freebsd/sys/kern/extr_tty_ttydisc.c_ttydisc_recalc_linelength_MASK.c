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
struct ttydisc_recalc_length {unsigned int curlen; int /*<<< orphan*/  member_1; struct tty* member_0; } ;
struct tty {int /*<<< orphan*/  t_inq; int /*<<< orphan*/  t_writepos; } ;

/* Variables and functions */
 int /*<<< orphan*/  ttydisc_recalc_charlength ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ttydisc_recalc_length*) ; 

__attribute__((used)) static unsigned int
FUNC1(struct tty *tp)
{
	struct ttydisc_recalc_length data = { tp, tp->t_writepos };

	FUNC0(&tp->t_inq,
	    ttydisc_recalc_charlength, &data);
	return (data.curlen);
}