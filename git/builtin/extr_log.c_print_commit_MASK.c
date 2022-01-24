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
struct strbuf {char* buf; } ;
struct TYPE_2__ {int /*<<< orphan*/  oid; } ;
struct commit {TYPE_1__ object; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CMIT_FMT_ONELINE ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct commit*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*) ; 

__attribute__((used)) static void FUNC4(char sign, struct commit *commit, int verbose,
			 int abbrev, FILE *file)
{
	if (!verbose) {
		FUNC1(file, "%c %s\n", sign,
		       FUNC0(&commit->object.oid, abbrev));
	} else {
		struct strbuf buf = STRBUF_INIT;
		FUNC2(CMIT_FMT_ONELINE, commit, &buf);
		FUNC1(file, "%c %s %s\n", sign,
		       FUNC0(&commit->object.oid, abbrev),
		       buf.buf);
		FUNC3(&buf);
	}
}