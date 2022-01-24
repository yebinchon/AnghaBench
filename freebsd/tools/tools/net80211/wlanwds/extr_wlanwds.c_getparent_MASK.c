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
typedef  int /*<<< orphan*/  oid ;

/* Variables and functions */
 size_t IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC1 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(const char *ifname, char parent[IFNAMSIZ+1])
{
	char oid[256];
	size_t parentlen;

	/* fetch parent interface name */
	FUNC0(oid, sizeof(oid), "net.wlan.%s.%%parent", ifname+4);
	parentlen = IFNAMSIZ;
	if (FUNC1(oid, parent, &parentlen, NULL, 0) < 0)
		return -1;
	parent[parentlen] = '\0';
	return 0;
}