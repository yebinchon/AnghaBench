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
 int FUNC0 (char const*,char const*,int) ; 

__attribute__((used)) static int FUNC1(const char *one, int onelen,
			    const char *two, int twolen)
{
	if (onelen < twolen)
		return -1;
	if (twolen < onelen)
		return 1;
	return FUNC0(one, two, onelen);
}