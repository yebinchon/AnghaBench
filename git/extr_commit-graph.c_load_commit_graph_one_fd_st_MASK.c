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
struct stat {int /*<<< orphan*/  st_size; } ;
struct commit_graph {int dummy; } ;

/* Variables and functions */
 size_t GRAPH_MIN_SIZE ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,size_t) ; 
 struct commit_graph* FUNC4 (void*,int,size_t) ; 
 void* FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 

struct commit_graph *FUNC7(int fd, struct stat *st)
{
	void *graph_map;
	size_t graph_size;
	struct commit_graph *ret;

	graph_size = FUNC6(st->st_size);

	if (graph_size < GRAPH_MIN_SIZE) {
		FUNC1(fd);
		FUNC2(FUNC0("commit-graph file is too small"));
		return NULL;
	}
	graph_map = FUNC5(NULL, graph_size, PROT_READ, MAP_PRIVATE, fd, 0);
	ret = FUNC4(graph_map, fd, graph_size);

	if (!ret) {
		FUNC3(graph_map, graph_size);
		FUNC1(fd);
	}

	return ret;
}