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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static inline int FUNC1(const char *field, size_t len)
{
	return ((len == 4 && !FUNC0(field, "tree", 4)) ||
		(len == 6 && !FUNC0(field, "parent", 6)) ||
		(len == 6 && !FUNC0(field, "author", 6)) ||
		(len == 9 && !FUNC0(field, "committer", 9)) ||
		(len == 8 && !FUNC0(field, "encoding", 8)));
}