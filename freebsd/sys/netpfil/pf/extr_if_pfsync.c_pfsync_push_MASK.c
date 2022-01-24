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
struct pfsync_bucket {int /*<<< orphan*/  b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFSYNCF_BUCKET_PUSH ; 
 int /*<<< orphan*/  FUNC0 (struct pfsync_bucket*) ; 
 int /*<<< orphan*/  V_pfsync_swi_cookie ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct pfsync_bucket *b)
{

	FUNC0(b);

	b->b_flags |= PFSYNCF_BUCKET_PUSH;
	FUNC1(V_pfsync_swi_cookie, 0);
}