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
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int*,char*,char*,char*,char*) ; 
 int somaxconn ; 

__attribute__((used)) static void
FUNC3(void)
{
	int sock;

	/*
	 * Set to 5, update to -1, which should give somaxconn.
	 */
	if (FUNC2(PF_INET, SOCK_STREAM, 0, 5, -1, 5, somaxconn,
	    &sock, "PF_INET", "SOCK_STREAM", "test_listen_update",
	    "update_5,-1") < 0)
		FUNC1(-1);
	FUNC0(sock);

	/*
	 * Set to 5, update to 0, which should give 0.
	 */
	if (FUNC2(PF_INET, SOCK_STREAM, 0, 5, 0, 5, 0, &sock,
	    "PF_INET", "SOCK_STREAM", "test_listen_update", "update_5,0")
	    < 0)
		FUNC1(-1);
	FUNC0(sock);

	/*
	 * Set to 5, update to 1, which should give 1.
	 */
	if (FUNC2(PF_INET, SOCK_STREAM, 0, 5, 1, 5, 1, &sock,
	    "PF_INET", "SOCK_STREAM", "test_listen_update", "update_5,1")
	    < 0)
		FUNC1(-1);
	FUNC0(sock);

	/*
	 * Set to 5, update to somaxconn, which should give somaxconn.
	 */
	if (FUNC2(PF_INET, SOCK_STREAM, 0, 5, somaxconn, 5,
	    somaxconn, &sock, "PF_INET", "SOCK_STREAM", "test_listen_update",
	    "update_5,somaxconn") < 0)
		FUNC1(-1);
	FUNC0(sock);

	/*
	 * Set to 5, update to somaxconn+1, which should give somaxconn.
	 */
	if (FUNC2(PF_INET, SOCK_STREAM, 0, 5, somaxconn+1, 5,
	    somaxconn, &sock, "PF_INET", "SOCK_STREAM", "test_listen_update",
	    "update_5,somaxconn+1") < 0)
		FUNC1(-1);
	FUNC0(sock);
}