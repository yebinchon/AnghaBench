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
struct tty {int dummy; } ;
struct rp_port {TYPE_1__* rp_ctlp; int /*<<< orphan*/  rp_timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 
 struct rp_port* FUNC3 (struct tty*) ; 

__attribute__((used)) static void
FUNC4(struct tty *tp)
{
	struct	rp_port	*rp;

	rp = FUNC3(tp);
	FUNC0(&rp->rp_timer);
	FUNC2(tp);
	FUNC1(rp->rp_ctlp->dev);
}