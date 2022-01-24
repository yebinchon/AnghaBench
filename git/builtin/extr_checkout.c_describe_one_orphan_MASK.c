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
struct strbuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_ONELINE ; 
 int /*<<< orphan*/  DEFAULT_ABBREV ; 
 int /*<<< orphan*/  FUNC0 (struct commit*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct commit*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 

__attribute__((used)) static void FUNC5(struct strbuf *sb, struct commit *commit)
{
	FUNC4(sb, "  ");
	FUNC2(sb, &commit->object.oid, DEFAULT_ABBREV);
	FUNC3(sb, ' ');
	if (!FUNC0(commit))
		FUNC1(CMIT_FMT_ONELINE, commit, sb);
	FUNC3(sb, '\n');
}