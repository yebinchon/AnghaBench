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
struct cache_tree_sub {int dummy; } ;
struct cache_tree {int dummy; } ;

/* Variables and functions */
 struct cache_tree_sub* FUNC0 (struct cache_tree*,char const*,int,int) ; 
 int FUNC1 (char const*) ; 

struct cache_tree_sub *FUNC2(struct cache_tree *it, const char *path)
{
	int pathlen = FUNC1(path);
	return FUNC0(it, path, pathlen, 1);
}