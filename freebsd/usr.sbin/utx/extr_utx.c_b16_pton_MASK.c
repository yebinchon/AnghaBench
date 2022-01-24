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
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char*) ; 

__attribute__((used)) static int
FUNC2(const char *in, char *out, size_t len)
{
	size_t i;

	for (i = 0; i < len * 2; i++)
		if (!FUNC0((unsigned char)in[i]))
			return (1);
	for (i = 0; i < len; i++)
		FUNC1(&in[i * 2], "%02hhx", &out[i]);
	return (0);
}