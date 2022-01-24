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
struct ucred {int dummy; } ;
struct socket {int /*<<< orphan*/  so_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_check_poll ; 

int
FUNC2(struct ucred *cred, struct socket *so)
{
	int error;

	FUNC1(socket_check_poll, cred, so, so->so_label);
	FUNC0(socket_check_poll, error, cred, so);

	return (error);
}