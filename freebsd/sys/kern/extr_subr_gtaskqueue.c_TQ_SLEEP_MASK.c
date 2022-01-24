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
struct mtx {int dummy; } ;
struct gtaskqueue {int /*<<< orphan*/  tq_mutex; scalar_t__ tq_spin; } ;

/* Variables and functions */
 int FUNC0 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (void*,struct mtx*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC2(struct gtaskqueue *tq, void *p, const char *wm)
{
	if (tq->tq_spin)
		return (FUNC1(p, (struct mtx *)&tq->tq_mutex, wm, 0));
	return (FUNC0(p, &tq->tq_mutex, 0, wm, 0));
}