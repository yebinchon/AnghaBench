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
struct g_classifier_hook {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct g_classifier_hook*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_bio_run_down ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_classifier_tailq ; 
 int /*<<< orphan*/  link ; 

int
FUNC3(struct g_classifier_hook *hook)
{

	FUNC1(&g_bio_run_down);
	FUNC0(&g_classifier_tailq, hook, link);
	FUNC2(&g_bio_run_down);

	return (0);
}