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
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 char* test ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static void
FUNC14(void)
{
	struct sockaddr_in sin;
	int slisten, sconnect, sv[2];
	int inflight, openfiles;
	socklen_t len;

	test = "listen_connect_drop";
	FUNC8("%s\n", test);
	FUNC9(&inflight, &openfiles);

	slisten = FUNC6(PF_INET, SOCK_STREAM, 0);
	FUNC2(slisten, (struct sockaddr *)&sin, sizeof(sin));
	FUNC5(slisten, -1);

	FUNC7(sv);

	len = sizeof(sin);
	FUNC4(slisten, (struct sockaddr *)&sin, &len);

	sconnect = FUNC6(PF_INET, SOCK_STREAM, 0);
	FUNC11(sconnect);
	FUNC3(sconnect, (struct sockaddr *)&sin, len);

	FUNC12(1);
	FUNC10(sv[0], slisten);
	FUNC1(slisten, sv[0], sv[1]);
	FUNC12(1);
	FUNC0(sconnect);

	FUNC13(inflight, openfiles);
}