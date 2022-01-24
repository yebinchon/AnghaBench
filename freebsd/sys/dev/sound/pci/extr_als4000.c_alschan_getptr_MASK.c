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
struct sc_info {int /*<<< orphan*/  lock; } ;
struct sc_chinfo {int /*<<< orphan*/  buffer; int /*<<< orphan*/  gcr_fifo_status; struct sc_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int32_t
FUNC4(kobj_t obj, void *data)
{
	struct sc_chinfo *ch = data;
	struct sc_info *sc = ch->parent;
	int32_t pos, sz;

	FUNC1(sc->lock);
	pos = FUNC0(ch->parent, ch->gcr_fifo_status) & 0xffff;
	FUNC2(sc->lock);
	sz  = FUNC3(ch->buffer);
	return (2 * sz - pos - 1) % sz;
}