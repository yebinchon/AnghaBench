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
struct tty {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int ENOIOCTL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC0 (struct tty*,int /*<<< orphan*/ ,void*,int,struct thread*) ; 
 scalar_t__ FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct tty*,int /*<<< orphan*/ ,void*,struct thread*) ; 

int
FUNC4(struct tty *tp, u_long cmd, void *data, int fflag, struct thread *td)
{
	int error;

	FUNC2(tp, MA_OWNED);

	if (FUNC1(tp))
		return (ENXIO);

	error = FUNC3(tp, cmd, data, td);
	if (error == ENOIOCTL)
		error = FUNC0(tp, cmd, data, fflag, td);

	return (error);
}