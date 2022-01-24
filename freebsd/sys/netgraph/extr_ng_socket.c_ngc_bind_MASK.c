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
struct sockaddr {int dummy; } ;
struct ngpcb {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sockaddr*,struct ngpcb* const) ; 
 struct ngpcb* FUNC1 (struct socket*) ; 

__attribute__((used)) static int
FUNC2(struct socket *so, struct sockaddr *nam, struct thread *td)
{
	struct ngpcb *const pcbp = FUNC1(so);

	if (pcbp == NULL)
		return (EINVAL);
	return (FUNC0(nam, pcbp));
}