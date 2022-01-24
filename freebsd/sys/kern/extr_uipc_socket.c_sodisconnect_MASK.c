#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct socket {int so_state; TYPE_2__* so_proto; } ;
struct TYPE_4__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_3__ {int (* pru_disconnect ) (struct socket*) ;} ;

/* Variables and functions */
 int EALREADY ; 
 int ENOTCONN ; 
 int SS_ISCONNECTED ; 
 int SS_ISDISCONNECTING ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int FUNC1 (struct socket*) ; 

int
FUNC2(struct socket *so)
{
	int error;

	if ((so->so_state & SS_ISCONNECTED) == 0)
		return (ENOTCONN);
	if (so->so_state & SS_ISDISCONNECTING)
		return (EALREADY);
	FUNC0(so);
	error = (*so->so_proto->pr_usrreqs->pru_disconnect)(so);
	return (error);
}