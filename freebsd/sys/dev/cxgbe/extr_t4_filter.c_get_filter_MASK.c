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
struct TYPE_2__ {scalar_t__ hash; } ;
struct t4_filter {TYPE_1__ fs; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct adapter*,struct t4_filter*) ; 
 int FUNC1 (struct adapter*,struct t4_filter*) ; 

int
FUNC2(struct adapter *sc, struct t4_filter *t)
{
	if (t->fs.hash)
		return (FUNC0(sc, t));
	else
		return (FUNC1(sc, t));
}