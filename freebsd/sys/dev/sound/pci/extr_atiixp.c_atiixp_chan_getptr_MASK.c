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
typedef  int /*<<< orphan*/  uint32_t ;
struct atiixp_info {scalar_t__ polling; } ;
struct atiixp_chinfo {int /*<<< orphan*/  ptr; struct atiixp_info* parent; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atiixp_chinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct atiixp_info*) ; 

__attribute__((used)) static uint32_t
FUNC3(kobj_t obj, void *data)
{
	struct atiixp_chinfo *ch = data;
	struct atiixp_info *sc = ch->parent;
	uint32_t ptr;

	FUNC1(sc);
	if (sc->polling != 0)
		ptr = ch->ptr;
	else
		ptr = FUNC0(ch);
	FUNC2(sc);

	return (ptr);
}