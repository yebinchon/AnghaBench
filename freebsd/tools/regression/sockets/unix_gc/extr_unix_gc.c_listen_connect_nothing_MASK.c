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
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 char* test ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 

__attribute__((used)) static void
FUNC12(void)
{
	struct sockaddr_in sin;
	int slisten, sconnect, sv[2];
	int inflight, openfiles;
	socklen_t len;

	test = "listen_connect_nothing";
	FUNC7("%s\n", test);
	FUNC8(&inflight, &openfiles);

	slisten = FUNC5(PF_INET, SOCK_STREAM, 0);
	FUNC1(slisten, (struct sockaddr *)&sin, sizeof(sin));
	FUNC4(slisten, -1);

	FUNC6(sv);

	len = sizeof(sin);
	FUNC3(slisten, (struct sockaddr *)&sin, &len);

	sconnect = FUNC5(PF_INET, SOCK_STREAM, 0);
	FUNC9(sconnect);
	FUNC2(sconnect, (struct sockaddr *)&sin, len);

	FUNC10(1);

	FUNC0(slisten, sconnect, sv[0], sv[1]);

	FUNC11(inflight, openfiles);
}