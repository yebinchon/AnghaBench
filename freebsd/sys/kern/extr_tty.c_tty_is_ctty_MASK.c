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
struct tty {scalar_t__ t_session; } ;
struct proc {scalar_t__ p_session; int p_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int P_CONTROLT ; 
 int /*<<< orphan*/  FUNC0 (struct tty*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC1(struct tty *tp, struct proc *p)
{

	FUNC0(tp, MA_OWNED);

	return (p->p_session == tp->t_session && p->p_flag & P_CONTROLT);
}