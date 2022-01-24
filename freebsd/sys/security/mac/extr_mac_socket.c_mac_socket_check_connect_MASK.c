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
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct socket*,struct sockaddr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct socket*,int /*<<< orphan*/ ,struct sockaddr*) ; 
 int /*<<< orphan*/  socket_check_connect ; 

int
FUNC2(struct ucred *cred, struct socket *so,
    struct sockaddr *sa)
{
	int error;

	FUNC1(socket_check_connect, cred, so,
	    so->so_label, sa);
	FUNC0(socket_check_connect, error, cred, so, sa);

	return (error);
}