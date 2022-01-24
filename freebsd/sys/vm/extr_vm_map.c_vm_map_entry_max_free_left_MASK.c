#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_6__ {scalar_t__ end; scalar_t__ start; TYPE_1__* left; } ;
struct TYPE_5__ {scalar_t__ max_free; } ;

/* Variables and functions */

__attribute__((used)) static inline vm_size_t
FUNC0(vm_map_entry_t root, vm_map_entry_t left_ancestor)
{

	return (root->left != NULL ?
	    root->left->max_free : root->start - left_ancestor->end);
}