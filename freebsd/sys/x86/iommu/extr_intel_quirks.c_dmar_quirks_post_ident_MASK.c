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
struct dmar_unit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  post_ident_cpu ; 

void
FUNC2(struct dmar_unit *dmar)
{

	FUNC0(dmar, NULL, 0, post_ident_cpu,
	    FUNC1(post_ident_cpu));
}