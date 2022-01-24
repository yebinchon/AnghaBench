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
struct umtx_key {int dummy; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_SHARE ; 
 int /*<<< orphan*/  THREAD_SHARE ; 
 int /*<<< orphan*/  TYPE_SIMPLE_WAIT ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct umtx_key*) ; 
 int /*<<< orphan*/  FUNC3 (struct umtx_key*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct umtx_key*) ; 

int
FUNC5(struct thread *td, void *uaddr, int n_wake, int is_private)
{
	struct umtx_key key;
	int ret;
	
	if ((ret = FUNC0(uaddr, TYPE_SIMPLE_WAIT,
	    is_private ? THREAD_SHARE : AUTO_SHARE, &key)) != 0)
		return (ret);
	FUNC2(&key);
	FUNC3(&key, n_wake);
	FUNC4(&key);
	FUNC1(&key);
	return (0);
}