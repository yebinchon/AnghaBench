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
struct shortlog {int /*<<< orphan*/  wrap; int /*<<< orphan*/  in2; int /*<<< orphan*/  in1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 

__attribute__((used)) static void FUNC2(struct strbuf *sb, const char *s,
				     const struct shortlog *log)
{
	FUNC0(sb, s, log->in1, log->in2, log->wrap);
	FUNC1(sb, '\n');
}