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
struct aiocb {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aiocb*,struct aiocb*) ; 
 int /*<<< orphan*/  FUNC1 (struct aiocb**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC2(struct aiocb *aio)
{
	struct aiocb *aiop;
	ssize_t ret;

	ret = FUNC1(&aiop, NULL);
	FUNC0(aio, aiop);
	return (ret);
}