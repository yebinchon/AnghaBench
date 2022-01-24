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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(const char *key, const char *branchname,
		       const char *remotename, int mirror, struct strbuf *tmp)
{
	FUNC3(tmp);
	FUNC1(tmp, '+');
	if (mirror)
		FUNC2(tmp, "refs/%s:refs/%s",
				branchname, branchname);
	else
		FUNC2(tmp, "refs/heads/%s:refs/remotes/%s/%s",
				branchname, remotename, branchname);
	FUNC0(key, tmp->buf, "^$", 0);
}