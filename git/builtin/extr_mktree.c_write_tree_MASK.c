#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;
struct treeent {TYPE_1__ oid; int /*<<< orphan*/  name; int /*<<< orphan*/  mode; scalar_t__ len; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct object_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rawsz; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct treeent**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ent_compare ; 
 struct treeent** entries ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 TYPE_2__* the_hash_algo ; 
 int /*<<< orphan*/  tree_type ; 
 int used ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct object_id*) ; 

__attribute__((used)) static void FUNC6(struct object_id *oid)
{
	struct strbuf buf;
	size_t size;
	int i;

	FUNC0(entries, used, ent_compare);
	for (size = i = 0; i < used; i++)
		size += 32 + entries[i]->len;

	FUNC3(&buf, size);
	for (i = 0; i < used; i++) {
		struct treeent *ent = entries[i];
		FUNC2(&buf, "%o %s%c", ent->mode, ent->name, '\0');
		FUNC1(&buf, ent->oid.hash, the_hash_algo->rawsz);
	}

	FUNC5(buf.buf, buf.len, tree_type, oid);
	FUNC4(&buf);
}