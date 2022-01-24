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
typedef  int /*<<< orphan*/  uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  enum object_type { ____Placeholder_object_type } object_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC1 (struct object_id const*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC2(
	const struct object_id *oid,
	enum object_type type,
	int exclude,
	uint32_t name_hash,
	struct packed_git *found_pack,
	off_t found_offset)
{
	FUNC0(stdout, "%s\n", FUNC1(oid));
	return 1;
}