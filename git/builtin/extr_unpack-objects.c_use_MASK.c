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
 char* FUNC0 (char*) ; 
 scalar_t__ consumed_bytes ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int len ; 
 scalar_t__ max_input_size ; 
 int offset ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(int bytes)
{
	if (bytes > len)
		FUNC1("used more bytes than were available");
	len -= bytes;
	offset += bytes;

	/* make sure off_t is sufficiently large not to wrap */
	if (FUNC2(consumed_bytes, bytes))
		FUNC1("pack too large for current definition of off_t");
	consumed_bytes += bytes;
	if (max_input_size && consumed_bytes > max_input_size)
		FUNC1(FUNC0("pack exceeds maximum allowed size"));
}