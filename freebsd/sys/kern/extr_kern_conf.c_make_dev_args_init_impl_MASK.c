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
struct make_dev_args {size_t mda_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct make_dev_args*,size_t) ; 

void
FUNC1(struct make_dev_args *args, size_t sz)
{

	FUNC0(args, sz);
	args->mda_size = sz;
}