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
struct automounted_fs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct automounted_fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  af_next ; 
 int /*<<< orphan*/  automounted ; 
 int /*<<< orphan*/  FUNC1 (struct automounted_fs*) ; 

__attribute__((used)) static void
FUNC2(struct automounted_fs *af)
{

	FUNC0(&automounted, af, af_next);
	FUNC1(af);
}