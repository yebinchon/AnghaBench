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
struct ngm_rmhook {int /*<<< orphan*/  ourhook; } ;
typedef  int /*<<< orphan*/  rmhook ;
typedef  int ng_ID_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int /*<<< orphan*/  NGM_RMHOOK ; 
 int /*<<< orphan*/  NG_HOOKSIZ ; 
 int NG_PATHSIZ ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ngm_rmhook*,int) ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC3(ng_ID_t id, const char *hook)
{
	struct ngm_rmhook rmhook;
	char path[NG_PATHSIZ];

	FUNC2(rmhook.ourhook, hook, NG_HOOKSIZ);
	FUNC1(path, NG_PATHSIZ, "[%x]:", id);
	return (FUNC0(csock, path,
	    NGM_GENERIC_COOKIE, NGM_RMHOOK, &rmhook, sizeof(rmhook)));
}