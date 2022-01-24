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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct thread*,int,void const*,int) ; 

int
FUNC3(struct thread *td, int shmid, const void *shmaddr, int shmflg)
{
	int error;

	FUNC0();
	error = FUNC2(td, shmid, shmaddr, shmflg);
	FUNC1();
	return (error);
}