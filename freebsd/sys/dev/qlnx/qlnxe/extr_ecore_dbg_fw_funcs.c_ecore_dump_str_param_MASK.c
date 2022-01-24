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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (char*,int,int) ; 
 int FUNC2 (char*,int,char const*) ; 

__attribute__((used)) static u32 FUNC3(u32 *dump_buf,
								bool dump,
								const char *param_name,
								const char *param_val)
{
	char *char_buf = (char *)dump_buf;
	u32 offset = 0;

	/* Dump param name */
	offset += FUNC2(char_buf + offset, dump, param_name);

	/* Indicate a string param value */
	if (dump)
		*(char_buf + offset) = 1;
	offset++;

	/* Dump param value */
	offset += FUNC2(char_buf + offset, dump, param_val);

	/* Align buffer to next dword */
	offset += FUNC1(char_buf + offset, dump, offset);

	return FUNC0(offset);
}