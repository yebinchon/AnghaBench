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
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
typedef  uintptr_t bhnd_size_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t,uintptr_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*,void*) ; 

int
FUNC7(struct resource *r,
    struct resource *parent, bhnd_size_t offset, bhnd_size_t size)
{
	bus_space_handle_t	bh, child_bh;
	bus_space_tag_t		bt;
	uintptr_t		vaddr;
	int			error;

	/* Fetch the parent resource's bus values */
	vaddr = (uintptr_t) FUNC3(parent);
	bt = FUNC2(parent);
	bh = FUNC1(parent);

	/* Configure child resource with offset-adjusted values */
	vaddr += offset;
	error = FUNC0(bt, bh, offset, size, &child_bh);
	if (error)
		return (error);

	FUNC6(r, (void *) vaddr);
	FUNC5(r, bt);
	FUNC4(r, child_bh);

	return (0);
}