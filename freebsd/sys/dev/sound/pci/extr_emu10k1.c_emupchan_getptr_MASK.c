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
typedef  int u_int32_t ;
struct sc_pchinfo {int /*<<< orphan*/  master; struct sc_info* parent; } ;
struct sc_info {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int FUNC0 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC3(kobj_t obj, void *data)
{
	struct sc_pchinfo *ch = data;
	struct sc_info *sc = ch->parent;
	int r;

	FUNC1(sc->lock);
	r = FUNC0(sc, ch->master);
	FUNC2(sc->lock);

	return r;
}