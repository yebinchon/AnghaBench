#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * par; } ;
struct dn_fsk {TYPE_1__ fs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int QFQ_MAX_WEIGHT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,char*) ; 

__attribute__((used)) static int
FUNC2(struct dn_fsk *f)
{
	FUNC1(&f->fs.par[0], 1, 1, QFQ_MAX_WEIGHT, "qfq weight");
	FUNC1(&f->fs.par[1], 1500, 1, 2000, "qfq maxlen");
	FUNC0("weight %d len %d\n", f->fs.par[0], f->fs.par[1]);
	return 0;
}