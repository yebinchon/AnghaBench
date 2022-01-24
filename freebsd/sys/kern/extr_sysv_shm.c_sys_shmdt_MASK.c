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
struct shmdt_args {int /*<<< orphan*/  shmaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct shmdt_args *uap)
{
	int error;

	FUNC0();
	error = FUNC2(td, uap->shmaddr);
	FUNC1();
	return (error);
}