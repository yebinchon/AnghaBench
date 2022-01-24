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
 long FUNC0 (char const*,char const*) ; 

__attribute__((used)) static int
FUNC1(const char *path)
{
	static const char charset[] =
	    "abcdefghijklmnopqrstuvwxyz"
	    "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	    "0123456789._-";
	long s;

	s = FUNC0(path, charset);
	if (path[s] != '\0')
		return (0);

	return (1);
}