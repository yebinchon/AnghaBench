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
struct kinfo_kstack {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  kinfo_kstack_compare ; 
 int /*<<< orphan*/  FUNC0 (struct kinfo_kstack*,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct kinfo_kstack *kkstp, int count)
{

        FUNC0(kkstp, count, sizeof(*kkstp), kinfo_kstack_compare);
}