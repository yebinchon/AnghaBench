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
typedef  int /*<<< orphan*/  u32 ;
struct mthca_eq {int dummy; } ;
struct mthca_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mthca_dev*,struct mthca_eq*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mthca_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mthca_dev*,struct mthca_eq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct mthca_dev *dev, struct mthca_eq *eq, u32 ci)
{
	if (FUNC1(dev))
		FUNC0(dev, eq, ci);
	else
		FUNC2(dev, eq, ci);
}