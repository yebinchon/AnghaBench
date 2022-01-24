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
struct tree_desc {int dummy; } ;
struct traverse_info {int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct traverse_info*,char const*) ; 
 int /*<<< orphan*/  the_index ; 
 int /*<<< orphan*/  threeway_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,struct tree_desc*,struct traverse_info*) ; 

__attribute__((used)) static void FUNC2(struct tree_desc t[3], const char *base)
{
	struct traverse_info info;

	FUNC0(&info, base);
	info.fn = threeway_callback;
	FUNC1(&the_index, 3, t, &info);
}