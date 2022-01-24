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
struct strbuf {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char const*) ; 
 char* FUNC1 (struct strbuf*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static char *FUNC4(const char *repo, int *is_bundle)
{
	struct strbuf path = STRBUF_INIT;
	const char *raw;
	char *canon;

	FUNC2(&path, repo);
	raw = FUNC1(&path, is_bundle);
	canon = raw ? FUNC0(raw) : NULL;
	FUNC3(&path);
	return canon;
}