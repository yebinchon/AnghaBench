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
struct repository {int /*<<< orphan*/  submodule_prefix; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 

__attribute__((used)) static void FUNC2(struct strbuf *out, const struct repository *repo,
			       const struct cache_entry *ce)
{
	FUNC1(out);
	if (repo->submodule_prefix)
		FUNC0(out, repo->submodule_prefix);
	FUNC0(out, ce->name);
}