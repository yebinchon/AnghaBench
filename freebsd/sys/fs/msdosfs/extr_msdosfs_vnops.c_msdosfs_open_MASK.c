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
struct vop_open_args {int /*<<< orphan*/  a_td; int /*<<< orphan*/  a_vp; } ;
struct denode {int /*<<< orphan*/  de_FileSize; } ;

/* Variables and functions */
 struct denode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vop_open_args *ap)
{
	struct denode *dep = FUNC0(ap->a_vp);
	FUNC1(ap->a_vp, dep->de_FileSize, ap->a_td);
	return 0;
}