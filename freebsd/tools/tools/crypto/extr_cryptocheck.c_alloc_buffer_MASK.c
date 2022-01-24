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
 char* FUNC0 (size_t) ; 
 char FUNC1 () ; 

__attribute__((used)) static char *
FUNC2(size_t len)
{
	char *buf;
	size_t i;

	buf = FUNC0(len);
	for (i = 0; i < len; i++)
		buf[i] = FUNC1();
	return (buf);
}