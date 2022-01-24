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
struct fail_point {int /*<<< orphan*/  fp_ref_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void
FUNC2(struct fail_point *fp)
{

	FUNC0(&fp->fp_ref_cnt > 0, ("Attempting to deref w/no refs"));
	FUNC1(&fp->fp_ref_cnt, 1);
}