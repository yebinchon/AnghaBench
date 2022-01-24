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
struct ext4_extent_path {scalar_t__ index_count; TYPE_1__* ep_header; int /*<<< orphan*/ * ep_index; } ;
struct TYPE_2__ {scalar_t__ eh_ecount; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int inline
FUNC2(struct ext4_extent_path *path)
{

	FUNC1(path->ep_index != NULL,
	    ("ext4_ext_more_to_rm: bad index from path"));

	if (path->ep_index < FUNC0(path->ep_header))
		return (0);

	if (path->ep_header->eh_ecount == path->index_count)
		return (0);

	return (1);
}