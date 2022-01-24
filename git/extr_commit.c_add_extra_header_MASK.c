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
struct commit_extra_header {scalar_t__ len; int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct strbuf *buffer,
			     struct commit_extra_header *extra)
{
	FUNC2(buffer, extra->key);
	if (extra->len)
		FUNC0(buffer, " ", extra->value, extra->len);
	else
		FUNC1(buffer, '\n');
}