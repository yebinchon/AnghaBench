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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct thread* curthread ; 
 int FUNC1 (int,struct socket*,struct sockaddr*,struct thread*) ; 

__attribute__((used)) static int
FUNC2(int fd, struct socket *so, struct sockaddr *nam,
    struct thread *td)
{
	int error;

	FUNC0(td == curthread, ("uipc_connectat: td != curthread"));
	error = FUNC1(fd, so, nam, td);
	return (error);
}