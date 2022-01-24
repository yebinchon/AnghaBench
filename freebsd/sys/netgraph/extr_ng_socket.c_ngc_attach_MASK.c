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
struct thread {int dummy; } ;
struct socket {int dummy; } ;
struct ngpcb {int dummy; } ;

/* Variables and functions */
 int EISCONN ; 
 int /*<<< orphan*/  PRIV_NETGRAPH_CONTROL ; 
 int FUNC0 (struct socket*) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 struct ngpcb* FUNC2 (struct socket*) ; 

__attribute__((used)) static int
FUNC3(struct socket *so, int proto, struct thread *td)
{
	struct ngpcb *const pcbp = FUNC2(so);
	int error;

	error = FUNC1(td, PRIV_NETGRAPH_CONTROL);
	if (error)
		return (error);
	if (pcbp != NULL)
		return (EISCONN);
	return (FUNC0(so));
}