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
struct commit_list {int /*<<< orphan*/  item; } ;

/* Variables and functions */
 int /*<<< orphan*/  commit_weight ; 
 int** FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct commit_list *elem, int weight)
{
	**FUNC0(&commit_weight, elem->item) = weight;
}