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
typedef  int lwpid_t ;

/* Variables and functions */
 size_t TID_BUFFER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int* tid_buffer ; 
 size_t tid_head ; 
 int /*<<< orphan*/  tid_lock ; 
 size_t tid_tail ; 
 int /*<<< orphan*/  tid_unrhdr ; 

__attribute__((used)) static lwpid_t
FUNC3(void)
{
	lwpid_t	tid;

	tid = FUNC0(tid_unrhdr);
	if (tid != -1)
		return (tid);
	FUNC1(&tid_lock);
	if (tid_head == tid_tail) {
		FUNC2(&tid_lock);
		return (-1);
	}
	tid = tid_buffer[tid_head];
	tid_head = (tid_head + 1) % TID_BUFFER_SIZE;
	FUNC2(&tid_lock);
	return (tid);
}