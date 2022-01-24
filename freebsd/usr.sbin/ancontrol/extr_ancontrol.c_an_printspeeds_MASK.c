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
typedef  double u_int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(const u_int8_t *w, int len)
{
	int			i;

	FUNC0("[ ");
	for (i = 0; i < len && w[i]; i++)
		FUNC0("%2.1fMbps ", w[i] * 0.500);
	FUNC0("]");
}