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
typedef  scalar_t__ uint32_t ;
struct contains_cache {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {scalar_t__ generation; } ;
typedef  enum contains_result { ____Placeholder_contains_result } contains_result ;

/* Variables and functions */
 int CONTAINS_NO ; 
 int CONTAINS_UNKNOWN ; 
 int CONTAINS_YES ; 
 int* FUNC0 (struct contains_cache*,struct commit*) ; 
 scalar_t__ FUNC1 (struct commit_list const*,struct commit*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*) ; 

__attribute__((used)) static enum contains_result FUNC3(struct commit *candidate,
					  const struct commit_list *want,
					  struct contains_cache *cache,
					  uint32_t cutoff)
{
	enum contains_result *cached = FUNC0(cache, candidate);

	/* If we already have the answer cached, return that. */
	if (*cached)
		return *cached;

	/* or are we it? */
	if (FUNC1(want, candidate)) {
		*cached = CONTAINS_YES;
		return CONTAINS_YES;
	}

	/* Otherwise, we don't know; prepare to recurse */
	FUNC2(candidate);

	if (candidate->generation < cutoff)
		return CONTAINS_NO;

	return CONTAINS_UNKNOWN;
}