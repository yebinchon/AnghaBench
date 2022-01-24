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
struct ref {int dummy; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 struct ref* FUNC0 (struct ref const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static struct ref *FUNC3(const struct ref *refs, const char *branch)
{
	struct ref *ref;
	struct strbuf head = STRBUF_INIT;
	FUNC1(&head, "refs/heads/");
	FUNC1(&head, branch);
	ref = FUNC0(refs, head.buf);
	FUNC2(&head);

	if (ref)
		return ref;

	FUNC1(&head, "refs/tags/");
	FUNC1(&head, branch);
	ref = FUNC0(refs, head.buf);
	FUNC2(&head);

	return ref;
}