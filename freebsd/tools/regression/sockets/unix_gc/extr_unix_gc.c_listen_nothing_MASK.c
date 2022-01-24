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
typedef  int /*<<< orphan*/  sun ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_un {int sun_len; int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr_in {int sun_len; int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* dpath ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 char* test ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(void)
{
	struct sockaddr_un sun;
	struct sockaddr_in sin;
	int inflight, openfiles;
	int s;

	test = "listen_nothing_unp";
	FUNC7("%s\n", test);
	FUNC0(&sun, sizeof(sun));
	sun.sun_family = AF_LOCAL;
	sun.sun_len = sizeof(sun);
	FUNC9(sun.sun_path, sizeof(sun.sun_path), "%s/%s", dpath, test);
	FUNC8(&inflight, &openfiles);
	s = FUNC6(PF_LOCAL, SOCK_STREAM, 0);
	FUNC4(s, (struct sockaddr *)&sun, sizeof(sun));
	FUNC5(s, -1);
	FUNC1(s);
	(void)FUNC11(sun.sun_path);
	FUNC10(inflight, openfiles);

	test = "listen_nothing_inet";
	FUNC7("%s\n", test);
	FUNC0(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC2(INADDR_LOOPBACK);
	sin.sin_port = FUNC3(0);
	FUNC8(&inflight, &openfiles);
	s = FUNC6(PF_INET, SOCK_STREAM, 0);
	FUNC4(s, (struct sockaddr *)&sin, sizeof(sin));
	FUNC5(s, -1);
	FUNC1(s);
	FUNC10(inflight, openfiles);
}