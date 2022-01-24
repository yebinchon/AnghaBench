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
struct sglist_seg {int dummy; } ;
struct sglist {int sg_nseg; int /*<<< orphan*/  sg_segs; int /*<<< orphan*/  sg_maxseg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct sglist* FUNC1 (int /*<<< orphan*/ ,int) ; 

struct sglist *
FUNC2(struct sglist *sg, int mflags)
{
	struct sglist *new;

	if (sg == NULL)
		return (NULL);
	new = FUNC1(sg->sg_maxseg, mflags);
	if (new == NULL)
		return (NULL);
	new->sg_nseg = sg->sg_nseg;
	FUNC0(sg->sg_segs, new->sg_segs, sizeof(struct sglist_seg) *
	    sg->sg_nseg);
	return (new);
}