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
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC1(const char *name, size_t len)
{
	return (!FUNC0("man", name, len) ||
		!FUNC0("woman", name, len) ||
		!FUNC0("konqueror", name, len));
}