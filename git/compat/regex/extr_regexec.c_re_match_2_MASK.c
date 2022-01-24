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
struct re_registers {int dummy; } ;
struct re_pattern_buffer {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct re_pattern_buffer*,char const*,int,char const*,int,int,int /*<<< orphan*/ ,struct re_registers*,int,int) ; 

int
FUNC1 (struct re_pattern_buffer *bufp,
	    const char *string1, int length1,
	    const char *string2, int length2, int start,
	    struct re_registers *regs, int stop)
{
  return FUNC0 (bufp, string1, length1, string2, length2,
			   start, 0, regs, stop, 1);
}