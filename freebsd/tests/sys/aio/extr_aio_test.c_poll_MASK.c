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
typedef  int ssize_t ;

/* Variables and functions */
 int EINPROGRESS ; 
 int FUNC0 (struct aiocb*) ; 
 int FUNC1 (struct aiocb*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static ssize_t
FUNC3(struct aiocb *aio)
{
	int error;

	while ((error = FUNC0(aio)) == EINPROGRESS)
		FUNC2(25000);
	if (error)
		return (error);
	else
		return (FUNC1(aio));
}