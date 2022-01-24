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
 int FUNC0 (struct re_pattern_buffer*,char const*,int,int,int,int,struct re_registers*,int /*<<< orphan*/ ) ; 

int
FUNC1 (struct re_pattern_buffer *bufp,
	   const char *string,
	   int length, int start, int range,
	   struct re_registers *regs)
{
  return FUNC0 (bufp, string, length, start, range, length, regs, 0);
}