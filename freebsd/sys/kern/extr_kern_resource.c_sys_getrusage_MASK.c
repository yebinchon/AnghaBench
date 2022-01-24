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
struct rusage {int dummy; } ;
struct getrusage_args {int /*<<< orphan*/  rusage; int /*<<< orphan*/  who; } ;

/* Variables and functions */
 int FUNC0 (struct rusage*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct thread*,int /*<<< orphan*/ ,struct rusage*) ; 

int
FUNC2(struct thread *td, struct getrusage_args *uap)
{
	struct rusage ru;
	int error;

	error = FUNC1(td, uap->who, &ru);
	if (error == 0)
		error = FUNC0(&ru, uap->rusage, sizeof(struct rusage));
	return (error);
}