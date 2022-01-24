#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct repository {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ hash_initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository*) ; 

__attribute__((used)) static void FUNC1(struct repository *repo)
{
	if (repo->config && repo->config->hash_initialized)
		return;
	FUNC0(repo);
}