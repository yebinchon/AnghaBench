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
struct tr_rchinfo {int /*<<< orphan*/  buffer; struct tr_info* parent; } ;
struct tr_info {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int /*<<< orphan*/  TR_REG_SBBL ; 
 int /*<<< orphan*/  TR_REG_SBCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct tr_info*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC3(kobj_t obj, void *data, u_int32_t format)
{
	struct tr_rchinfo *ch = data;
	struct tr_info *tr = ch->parent;
	u_int32_t i, bits;

	bits = FUNC1(format);
	/* set # of samples between interrupts */
	i = (FUNC0(ch->buffer) >> ((bits & 0x08)? 1 : 0)) - 1;
	FUNC2(tr, TR_REG_SBBL, i | (i << 16), 4);
	/* set sample format */
	i = 0x18 | (bits << 4);
	FUNC2(tr, TR_REG_SBCTRL, i, 1);

	return 0;
}