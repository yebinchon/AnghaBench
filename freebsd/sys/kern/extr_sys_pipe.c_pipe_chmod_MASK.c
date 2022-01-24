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
struct thread {int dummy; } ;
struct pipe {int pipe_state; } ;
struct file {struct pipe* f_data; } ;
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int PIPE_NAMED ; 
 int FUNC0 (struct file*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 

__attribute__((used)) static int
FUNC2(struct file *fp, mode_t mode, struct ucred *active_cred, struct thread *td)
{
	struct pipe *cpipe;
	int error;

	cpipe = fp->f_data;
	if (cpipe->pipe_state & PIPE_NAMED)
		error = FUNC1(fp, mode, active_cred, td);
	else
		error = FUNC0(fp, mode, active_cred, td);
	return (error);
}