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
struct mac {int dummy; } ;
struct image_args {scalar_t__ endp; int /*<<< orphan*/  envc; scalar_t__ begin_argv; int /*<<< orphan*/  argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct thread*,struct image_args*,struct mac*) ; 
 scalar_t__ FUNC3 (struct image_args*) ; 

int
FUNC4(struct thread *td, struct image_args *args, struct mac *mac_p)
{

	FUNC0(args->begin_argv, args->argc,
	    FUNC3(args) - args->begin_argv);
	FUNC1(FUNC3(args), args->envc,
	    args->endp - FUNC3(args));
	return (FUNC2(td, args, mac_p));
}