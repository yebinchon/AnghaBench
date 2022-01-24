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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PRIV_NET_RAW ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct socket*,int) ; 
 int /*<<< orphan*/ * FUNC3 (struct socket*) ; 

__attribute__((used)) static int
FUNC4(struct socket *so, int proto, struct thread *td)
{
	int error;

	/*
	 * Implementors of raw sockets will already have allocated the PCB,
	 * so it must be non-NULL here.
	 */
	FUNC0(FUNC3(so) != NULL, ("raw_uattach: so_pcb == NULL"));

	if (td != NULL) {
		error = FUNC1(td, PRIV_NET_RAW);
		if (error)
			return (error);
	}
	return (FUNC2(so, proto));
}