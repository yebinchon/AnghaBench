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
struct base_data {int ref_last; int ofs_last; } ;

/* Variables and functions */
 struct base_data* FUNC0 (int,int) ; 

__attribute__((used)) static struct base_data *FUNC1(void)
{
	struct base_data *base = FUNC0(1, sizeof(struct base_data));
	base->ref_last = -1;
	base->ofs_last = -1;
	return base;
}