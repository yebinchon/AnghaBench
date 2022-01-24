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
struct repository {int /*<<< orphan*/  config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 
 struct string_list const* FUNC1 (int /*<<< orphan*/ ,char const*) ; 

const struct string_list *FUNC2(struct repository *repo,
						      const char *key)
{
	FUNC0(repo);
	return FUNC1(repo->config, key);
}