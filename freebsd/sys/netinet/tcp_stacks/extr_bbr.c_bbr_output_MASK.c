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
struct timeval {int dummy; } ;
struct tcpcb {int /*<<< orphan*/  t_inpcb; scalar_t__ t_fb_ptr; } ;
struct tcp_bbr {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct tcpcb*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 

__attribute__((used)) static int
FUNC3(struct tcpcb *tp)
{
	int32_t ret;
	struct timeval tv;
	struct tcp_bbr *bbr;

	bbr = (struct tcp_bbr *)tp->t_fb_ptr;
	FUNC0(tp->t_inpcb);
	(void)FUNC2(&tv);
	ret = FUNC1(tp, &tv);
	return (ret);
}