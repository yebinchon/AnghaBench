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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ consumed_bytes ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ input_buffer ; 
 int /*<<< orphan*/  input_crc32 ; 
 int input_len ; 
 scalar_t__ input_offset ; 
 scalar_t__ max_input_size ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(int bytes)
{
	if (bytes > input_len)
		FUNC2(FUNC0("used more bytes than were available"));
	input_crc32 = FUNC1(input_crc32, input_buffer + input_offset, bytes);
	input_len -= bytes;
	input_offset += bytes;

	/* make sure off_t is sufficiently large not to wrap */
	if (FUNC3(consumed_bytes, bytes))
		FUNC2(FUNC0("pack too large for current definition of off_t"));
	consumed_bytes += bytes;
	if (max_input_size && consumed_bytes > max_input_size)
		FUNC2(FUNC0("pack exceeds maximum allowed size"));
}