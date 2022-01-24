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
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
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
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 char* dpath ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 char* test ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 

__attribute__((used)) static void
FUNC13(void)
{
	struct sockaddr_un sun;
	struct sockaddr_in sin;
	int inflight, openfiles;
	int s, sv[2];

	FUNC0(&sun, sizeof(sun));
	sun.sun_family = AF_LOCAL;
	sun.sun_len = sizeof(sun);

	/*
	 * Close listen socket first.
	 */
	test = "listen_drop_unp1";
	FUNC8("%s\n", test);
	FUNC11(sun.sun_path, sizeof(sun.sun_path), "%s/%s", dpath, test);
	FUNC9(&inflight, &openfiles);
	s = FUNC6(PF_LOCAL, SOCK_STREAM, 0);
	FUNC4(s, (struct sockaddr *)&sun, sizeof(sun));
	FUNC5(s, -1);
	FUNC7(sv);
	FUNC10(sv[0], s);
	FUNC1(s, sv[0], sv[1]);
	FUNC12(inflight, openfiles);

	/*
	 * Close socketpair first.
	 */
	test = "listen_drop_unp2";
	FUNC8("%s\n", test);
	FUNC11(sun.sun_path, sizeof(sun.sun_path), "%s/%s", dpath, test);
	FUNC9(&inflight, &openfiles);
	s = FUNC6(PF_LOCAL, SOCK_STREAM, 0);
	FUNC4(s, (struct sockaddr *)&sun, sizeof(sun));
	FUNC5(s, -1);
	FUNC7(sv);
	FUNC10(sv[0], s);
	FUNC1(sv[0], sv[1], s);
	FUNC12(inflight, openfiles);

	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC2(INADDR_LOOPBACK);
	sin.sin_port = FUNC3(0);

	/*
	 * Close listen socket first.
	 */
	test = "listen_drop_inet1";
	FUNC8("%s\n", test);
	FUNC0(&sun, sizeof(sun));
	FUNC9(&inflight, &openfiles);
	s = FUNC6(PF_INET, SOCK_STREAM, 0);
	FUNC4(s, (struct sockaddr *)&sin, sizeof(sin));
	FUNC5(s, -1);
	FUNC7(sv);
	FUNC10(sv[0], s);
	FUNC1(s, sv[0], sv[1]);
	FUNC12(inflight, openfiles);

	/*
	 * Close socketpair first.
	 */
	test = "listen_drop_inet2";
	FUNC8("%s\n", test);
	FUNC0(&sun, sizeof(sun));
	FUNC9(&inflight, &openfiles);
	s = FUNC6(PF_INET, SOCK_STREAM, 0);
	FUNC4(s, (struct sockaddr *)&sin, sizeof(sin));
	FUNC5(s, -1);
	FUNC7(sv);
	FUNC10(sv[0], s);
	FUNC1(sv[0], sv[1], s);
	FUNC12(inflight, openfiles);
}