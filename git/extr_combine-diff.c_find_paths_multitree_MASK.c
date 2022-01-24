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
struct oid_array {int nr; struct object_id* oid; } ;
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct combine_diff_path {struct combine_diff_path* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct object_id const**,int) ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct combine_diff_path*,struct object_id const*,struct object_id const**,int,struct strbuf*,struct diff_options*) ; 
 int /*<<< orphan*/  FUNC2 (struct object_id const**) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 

__attribute__((used)) static struct combine_diff_path *FUNC5(
	const struct object_id *oid, const struct oid_array *parents,
	struct diff_options *opt)
{
	int i, nparent = parents->nr;
	const struct object_id **parents_oid;
	struct combine_diff_path paths_head;
	struct strbuf base;

	FUNC0(parents_oid, nparent);
	for (i = 0; i < nparent; i++)
		parents_oid[i] = &parents->oid[i];

	/* fake list head, so worker can assume it is non-NULL */
	paths_head.next = NULL;

	FUNC3(&base, PATH_MAX);
	FUNC1(&paths_head, oid, parents_oid, nparent, &base, opt);

	FUNC4(&base);
	FUNC2(parents_oid);
	return paths_head.next;
}