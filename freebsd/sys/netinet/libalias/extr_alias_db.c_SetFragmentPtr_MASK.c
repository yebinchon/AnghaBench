#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* frag_ptr; } ;
struct alias_link {TYPE_1__ data; } ;

/* Variables and functions */

void
FUNC0(struct alias_link *lnk, char *fptr)
{
	lnk->data.frag_ptr = fptr;
}