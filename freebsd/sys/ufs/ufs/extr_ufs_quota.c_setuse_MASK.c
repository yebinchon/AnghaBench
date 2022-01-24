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
typedef  int /*<<< orphan*/  u_long ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct dqblk64 {int dummy; } ;
typedef  int /*<<< orphan*/  dqb64 ;

/* Variables and functions */
 int FUNC0 (struct thread*,struct mount*,int /*<<< orphan*/ ,int,struct dqblk64*) ; 
 int FUNC1 (void*,struct dqblk64*,int) ; 

int
FUNC2(struct thread *td, struct mount *mp, u_long id, int type, void *addr)
{
	struct dqblk64 dqb64;
	int error;

	error = FUNC1(addr, &dqb64, sizeof(dqb64));
	if (error)
		return (error);
	error = FUNC0(td, mp, id, type, &dqb64);
	return (error);
}