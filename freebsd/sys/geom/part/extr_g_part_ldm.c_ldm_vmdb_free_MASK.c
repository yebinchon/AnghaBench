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
struct ldm_xvblk {struct ldm_xvblk* data; } ;
struct ldm_vblk {struct ldm_vblk* data; } ;
struct ldm_db {int /*<<< orphan*/  vblks; int /*<<< orphan*/  xvblks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ldm_xvblk* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ldm_xvblk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC3 (struct ldm_xvblk*) ; 

__attribute__((used)) static void
FUNC4(struct ldm_db *db)
{
	struct ldm_vblk *vblk;
	struct ldm_xvblk *xvblk;

	while (!FUNC0(&db->xvblks)) {
		xvblk = FUNC1(&db->xvblks);
		FUNC2(xvblk, entry);
		FUNC3(xvblk->data);
		FUNC3(xvblk);
	}
	while (!FUNC0(&db->vblks)) {
		vblk = FUNC1(&db->vblks);
		FUNC2(vblk, entry);
		FUNC3(vblk);
	}
}