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
struct sc_pchinfo {int spd; int /*<<< orphan*/  buffer; struct sc_info* parent; } ;
struct sc_info {int bufsz; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int DS1_IRQHZ ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static u_int32_t
FUNC3(kobj_t obj, void *data, u_int32_t blocksize)
{
	struct sc_pchinfo *ch = data;
	struct sc_info *sc = ch->parent;
	int drate;

	/* irq rate is fixed at 187.5hz */
	drate = ch->spd * FUNC1(ch->buffer);
	blocksize = FUNC0((drate << 8) / DS1_IRQHZ, 4);
	FUNC2(ch->buffer, sc->bufsz / blocksize, blocksize);

	return blocksize;
}