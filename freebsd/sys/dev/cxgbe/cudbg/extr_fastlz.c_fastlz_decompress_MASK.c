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
 int FUNC0 (void const*,int,void*,int) ; 
 int FUNC1 (void const*,int,void*,int) ; 

int FUNC2(const void *input, int length, void *output, int maxout)
{
	/* magic identifier for compression level */
	int level = ((*(const unsigned char *)input) >> 5) + 1;

	if (level == 1)
		return FUNC0(input, length, output, maxout);
	if (level == 2)
		return FUNC1(input, length, output, maxout);

	/* unknown level, trigger error */
	return 0;
}