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
typedef  int /*<<< orphan*/  sun ;
struct sockaddr_un {int sun_len; int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_family; } ;
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_un*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,struct sockaddr*,int) ; 
 int FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static const char*
FUNC12(int *sv)
{
	struct sockaddr_un sun;
	/* ATF's isolation mechanisms will guarantee uniqueness of this file */
	const char *path = "sock";
	int s, err, s2, s1;

	s = FUNC10(PF_LOCAL, SOCK_SEQPACKET, 0);
	FUNC1(s >= 0);

	FUNC5(&sun, sizeof(sun));
	sun.sun_family = AF_LOCAL;
	sun.sun_len = sizeof(sun);
	FUNC11(sun.sun_path, path, sizeof(sun.sun_path));
	err = FUNC4(s, (struct sockaddr *)&sun, sizeof(sun));
	err = FUNC8(s, -1);
	FUNC0(0, err);

	/* Create the other socket */
	s2 = FUNC10(PF_LOCAL, SOCK_SEQPACKET, 0);
	FUNC1(s2 >= 0);
	err = FUNC7(s2, (struct sockaddr*)&sun, sizeof(sun));
	if (err != 0) {
		FUNC9("connect");
		FUNC3("connect(2) failed");
	}

	/* Accept it */
	s1 = FUNC2(s, NULL, NULL);
	if (s1 == -1) {
		FUNC9("accept");
		FUNC3("accept(2) failed");
	}

	sv[0] = s1;
	sv[1] = s2;

	FUNC6(s);

	return (path);
}