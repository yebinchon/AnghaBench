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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 size_t fget_cnt ; 
 int /*<<< orphan*/ * fget_str ; 

__attribute__((used)) static void
FUNC0(uint32_t data, uint32_t len)
{

	*((uint32_t *) &fget_str[fget_cnt]) = data;
	fget_cnt += sizeof(uint32_t);
}