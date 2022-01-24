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
struct in6_addrpolicy {int /*<<< orphan*/  addrmask; int /*<<< orphan*/  addr; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  AI_NUMERICHOST ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 char* FUNC9 (char*,char) ; 
 char* FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static int
FUNC12(const char *prefix0, struct in6_addrpolicy *pol)
{
	int e = 0, plen;
	char *prefix, *plenstr;
	struct addrinfo hints, *res;

	if ((prefix = FUNC10(prefix0)) == NULL)
		FUNC1(1, "strdup failed");

	if ((plenstr = FUNC9(prefix, '/')) == NULL) {
		e = -1;
		goto end;
	}
	*plenstr = '\0';

	FUNC7(&hints, 0, sizeof(hints));
	hints.ai_flags = AI_NUMERICHOST;
	hints.ai_family = AF_INET6;

	if ((e = FUNC5(prefix, NULL, &hints, &res)) != 0) {
		FUNC11("getaddrinfo failed for %s: %s", prefix,
		      FUNC4(e));
		goto end;
	}
	FUNC6(&pol->addr, res->ai_addr, res->ai_addrlen);
	FUNC3(res);
	plen = FUNC0(plenstr + 1);
	if (plen < 0 || plen > 128) {
		FUNC11("invalid prefix length: %d", plen);
		e = -1;
		goto end;
	}
	FUNC8(&pol->addrmask, plen);

  end:
	FUNC2(prefix);
	return(e);
}