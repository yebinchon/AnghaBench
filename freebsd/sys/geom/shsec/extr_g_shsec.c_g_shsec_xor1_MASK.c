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
typedef  int uint32_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static void
FUNC1(uint32_t *src, uint32_t *dst, ssize_t len)
{

	for (; len > 0; len -= sizeof(uint32_t), dst++)
		*dst = *dst ^ *src++;
	FUNC0(len == 0, ("len != 0 (len=%zd)", len));
}