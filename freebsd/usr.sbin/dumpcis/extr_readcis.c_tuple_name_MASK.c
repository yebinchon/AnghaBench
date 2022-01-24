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
struct tuple_info {char const* name; } ;

/* Variables and functions */
 struct tuple_info* FUNC0 (unsigned char) ; 

const char *
FUNC1(unsigned char code)
{
	struct tuple_info *tp;

	tp = FUNC0(code);
	if (tp)
		return (tp->name);
	return ("Unknown");
}