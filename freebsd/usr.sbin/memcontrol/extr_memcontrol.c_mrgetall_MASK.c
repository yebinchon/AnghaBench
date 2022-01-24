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
struct mem_range_op {int* mo_arg; struct mem_range_desc* mo_desc; } ;
struct mem_range_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MEMRANGE_GET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct mem_range_op*) ; 
 struct mem_range_desc* FUNC3 (int) ; 

__attribute__((used)) static struct mem_range_desc *
FUNC4(int memfd, int *nmr)
{
    struct mem_range_desc	*mrd;
    struct mem_range_op		mro;

    mro.mo_arg[0] = 0;
    if (FUNC2(memfd, MEMRANGE_GET, &mro))
	FUNC0(1, "can't size range descriptor array");
    
    *nmr = mro.mo_arg[0];
    mrd = FUNC3(*nmr * sizeof(struct mem_range_desc));
    if (mrd == NULL)
	FUNC1(1, "can't allocate %zd bytes for %d range descriptors", 
	     *nmr * sizeof(struct mem_range_desc), *nmr);

    mro.mo_arg[0] = *nmr;
    mro.mo_desc = mrd;
    if (FUNC2(memfd, MEMRANGE_GET, &mro))
	FUNC0(1, "can't fetch range descriptor array");

    return(mrd);
}