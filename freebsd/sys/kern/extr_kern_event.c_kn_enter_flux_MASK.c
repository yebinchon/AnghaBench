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
struct knote {scalar_t__ kn_influx; int /*<<< orphan*/  kn_kq; } ;

/* Variables and functions */
 scalar_t__ INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct knote *kn)
{

	FUNC0(kn->kn_kq);
	FUNC1(kn->kn_influx < INT_MAX);
	kn->kn_influx++;
}