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
struct pcisel {int dummy; } ;

/* Variables and functions */
 struct pcisel FUNC0 (char const*) ; 
 struct pcisel FUNC1 (char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char) ; 

__attribute__((used)) static struct pcisel
FUNC3(const char *str)
{

	/*
	 * No device names contain colons and selectors always contain
	 * at least one colon.
	 */
	if (FUNC2(str, ':') == NULL)
		return (FUNC0(str));
	else
		return (FUNC1(str));
}