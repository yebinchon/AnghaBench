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
struct ref_filter {scalar_t__ with_commit_tag_algo; } ;
struct contains_cache {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 scalar_t__ CONTAINS_YES ; 
 scalar_t__ FUNC0 (struct commit*,struct commit_list*,struct contains_cache*) ; 
 int FUNC1 (struct commit*,struct commit_list*) ; 

int FUNC2(struct ref_filter *filter, struct commit *commit,
		    struct commit_list *list, struct contains_cache *cache)
{
	if (filter->with_commit_tag_algo)
		return FUNC0(commit, list, cache) == CONTAINS_YES;
	return FUNC1(commit, list);
}