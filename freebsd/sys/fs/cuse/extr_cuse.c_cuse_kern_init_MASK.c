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

/* Variables and functions */
 int CUSE_VERSION ; 
 int /*<<< orphan*/  GID_OPERATOR ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UID_ROOT ; 
 int /*<<< orphan*/  cuse_dev ; 
 int /*<<< orphan*/  cuse_mtx ; 
 int /*<<< orphan*/  cuse_server_devsw ; 
 int /*<<< orphan*/  cuse_server_head ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	FUNC0(&cuse_server_head);

	FUNC2(&cuse_mtx, "cuse-mtx", NULL, MTX_DEF);

	cuse_dev = FUNC1(&cuse_server_devsw, 0,
	    UID_ROOT, GID_OPERATOR, 0600, "cuse");

	FUNC3("Cuse v%d.%d.%d @ /dev/cuse\n",
	    (CUSE_VERSION >> 16) & 0xFF, (CUSE_VERSION >> 8) & 0xFF,
	    (CUSE_VERSION >> 0) & 0xFF);
}