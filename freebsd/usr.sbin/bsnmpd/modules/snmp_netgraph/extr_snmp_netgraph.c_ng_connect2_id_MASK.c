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
struct ngm_connect {char* path; int /*<<< orphan*/  peerhook; int /*<<< orphan*/  ourhook; } ;
typedef  int ng_ID_t ;
typedef  int /*<<< orphan*/  conn ;

/* Variables and functions */
 int /*<<< orphan*/  NGM_CONNECT ; 
 int /*<<< orphan*/  NGM_GENERIC_COOKIE ; 
 int /*<<< orphan*/  NG_HOOKSIZ ; 
 int NG_PATHSIZ ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ngm_connect*,int) ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC3(ng_ID_t id, ng_ID_t peer, const char *ourhook,
    const char *peerhook)
{
	struct ngm_connect conn;
	char path[NG_PATHSIZ];

	FUNC1(path, NG_PATHSIZ, "[%x]:", id);

	FUNC1(conn.path, NG_PATHSIZ, "[%x]:", peer);
	FUNC2(conn.ourhook, ourhook, NG_HOOKSIZ);
	FUNC2(conn.peerhook, peerhook, NG_HOOKSIZ);
	return (FUNC0(csock, path,
	    NGM_GENERIC_COOKIE, NGM_CONNECT, &conn, sizeof(conn)));
}