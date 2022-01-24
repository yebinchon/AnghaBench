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
typedef  void* uint64_t ;
struct rs_el {void* re_start; void* re_end; } ;
struct rangeset {int /*<<< orphan*/  rs_trie; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rangeset*) ; 
 int FUNC2 (struct rangeset*,void*,void*) ; 
 int /*<<< orphan*/  rs_node_alloc ; 

int
FUNC3(struct rangeset *rs, uint64_t start, uint64_t end,
    void *data)
{
	struct rs_el *r;
	int error;

	FUNC1(rs);
	error = FUNC2(rs, start, end);
	if (error != 0)
		return (error);
	r = data;
	r->re_start = start;
	r->re_end = end;
	error = FUNC0(&rs->rs_trie, &r->re_start, rs_node_alloc);
	FUNC1(rs);
	return (error);
}