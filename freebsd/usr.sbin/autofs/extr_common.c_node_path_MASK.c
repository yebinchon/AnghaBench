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
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (struct node const*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*) ; 

char *
FUNC3(const struct node *n)
{
	char *path;
	size_t len;

	path = FUNC1(n, FUNC0(""));

	/*
	 * Strip trailing slash, unless the whole path is "/".
	 */
	len = FUNC2(path);
	if (len > 1 && path[len - 1] == '/')
		path[len - 1] = '\0';

	return (path);
}