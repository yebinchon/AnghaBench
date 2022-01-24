#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ;} ;

/* Variables and functions */
 scalar_t__ input_buffer ; 
 int /*<<< orphan*/  input_ctx ; 
 int /*<<< orphan*/  input_len ; 
 scalar_t__ input_offset ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ output_fd ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 TYPE_1__* the_hash_algo ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (input_offset) {
		if (output_fd >= 0)
			FUNC2(output_fd, input_buffer, input_offset);
		the_hash_algo->update_fn(&input_ctx, input_buffer, input_offset);
		FUNC0(input_buffer, input_buffer + input_offset, input_len);
		input_offset = 0;
	}
}