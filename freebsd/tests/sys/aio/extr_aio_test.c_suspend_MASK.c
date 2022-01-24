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
typedef  struct aiocb const aiocb ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (struct aiocb const*) ; 
 int FUNC1 (struct aiocb const* const*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC2(struct aiocb *aio)
{
	const struct aiocb *const iocbs[] = {aio};
	int error;

	error = FUNC1(iocbs, 1, NULL);
	if (error == 0)
		return (FUNC0(aio));
	else
		return (error);
}