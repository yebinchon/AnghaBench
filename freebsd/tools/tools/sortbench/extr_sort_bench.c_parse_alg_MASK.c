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
typedef  enum sort { ____Placeholder_sort } sort ;

/* Variables and functions */
 int HEAP ; 
 int INVALID_ALG ; 
 int MERGE ; 
 int QUICK ; 
 int WIKI ; 
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static enum sort
FUNC1(char *alg)
{
	if (FUNC0(alg, "merge") == 0)
		return MERGE;
#ifdef WIKI
	else if (strcmp(alg, "wiki") == 0)
		return WIKI;
#endif
	else if (FUNC0(alg, "quick") == 0)
		return QUICK;
	else if (FUNC0(alg, "heap") == 0)
		return HEAP;
	else
		return INVALID_ALG;
}