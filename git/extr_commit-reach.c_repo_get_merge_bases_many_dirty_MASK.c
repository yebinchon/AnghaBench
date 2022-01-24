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
struct repository {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 struct commit_list* FUNC0 (struct repository*,struct commit*,int,struct commit**,int /*<<< orphan*/ ) ; 

struct commit_list *FUNC1(struct repository *r,
						    struct commit *one,
						    int n,
						    struct commit **twos)
{
	return FUNC0(r, one, n, twos, 0);
}