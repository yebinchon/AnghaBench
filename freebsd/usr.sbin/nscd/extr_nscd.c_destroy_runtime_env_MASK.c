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
struct runtime_env {int /*<<< orphan*/  sockfd; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void (*) (struct runtime_env*)) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (struct runtime_env*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct runtime_env*) ; 

__attribute__((used)) static void
FUNC4(struct runtime_env *env)
{
	FUNC0(destroy_runtime_env);
	FUNC2(env->queue);
	FUNC2(env->sockfd);
	FUNC3(env);
	FUNC1(destroy_runtime_env);
}