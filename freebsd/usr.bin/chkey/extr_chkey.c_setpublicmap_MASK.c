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
 int /*<<< orphan*/  PKFILE ; 
 int /*<<< orphan*/  PKMAP ; 
 int /*<<< orphan*/  YPOP_STORE ; 
 int /*<<< orphan*/  domain ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC4(char *name, char *public, char *secret)
{
	char pkent[1024];
	
	(void)FUNC1(pkent,"%s:%s", public, secret);
#ifdef YP
	return (yp_update(domain, PKMAP, YPOP_STORE,
		name, strlen(name), pkent, strlen(pkent)));
#else
	return (FUNC0(name, PKFILE, YPOP_STORE,
		FUNC2(name), name, FUNC2(pkent), pkent));
#endif
}