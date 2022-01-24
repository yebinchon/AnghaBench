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
typedef  int u_long ;
struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct rp_port {int /*<<< orphan*/  rp_channel; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int ENOIOCTL ; 
#define  TIOCCBRK 129 
#define  TIOCSBRK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rp_port* FUNC2 (struct tty*) ; 

__attribute__((used)) static int
FUNC3(struct tty *tp, u_long cmd, caddr_t data, struct thread *td)
{
	struct rp_port	*rp;

	rp = FUNC2(tp);
	switch (cmd) {
	case TIOCSBRK:
		FUNC1(&rp->rp_channel);
		return (0);
	case TIOCCBRK:
		FUNC0(&rp->rp_channel);
		return (0);
	default:
		return ENOIOCTL;
	}
}