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
struct cudbg_buffer {int dummy; } ;

/* Variables and functions */
 int CUDBG_STATUS_INVALID_BUFF ; 
 int /*<<< orphan*/  FUNC0 (struct cudbg_buffer*) ; 

int FUNC1(struct cudbg_buffer *compressed_buffer)
{
	if (!FUNC0(compressed_buffer))
		return CUDBG_STATUS_INVALID_BUFF;

	return 0;
}