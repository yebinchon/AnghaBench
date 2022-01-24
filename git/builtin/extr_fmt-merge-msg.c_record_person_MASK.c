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
struct string_list {int dummy; } ;
struct commit {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct commit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct string_list*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct commit*,char const*) ; 

__attribute__((used)) static void FUNC3(int which, struct string_list *people,
			  struct commit *commit)
{
	const char *buffer = FUNC0(commit, NULL);
	FUNC1(which, people, buffer);
	FUNC2(commit, buffer);
}