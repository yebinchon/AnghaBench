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
typedef  int uint16_t ;
struct sbuf {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  SBcode; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  PCIR_DEVVENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* emu_cards ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbuf*) ; 
 struct sbuf* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct sbuf *s;
	unsigned int thiscard = 0;
	uint16_t vendor;

	vendor = FUNC2(dev, PCIR_DEVVENDOR, /* bytes */ 2);
	if (vendor != 0x1102)
		return (ENXIO);	/* Not Creative */

	thiscard = FUNC1(dev);
	if (thiscard == 0)
		return (ENXIO);

	s = FUNC6(NULL, NULL, 4096, 0);
	if (s == NULL)
		return (ENOMEM);
	FUNC7(s, "Creative %s [%s]", emu_cards[thiscard].desc, emu_cards[thiscard].SBcode);
	FUNC5(s);

	FUNC0(dev, FUNC3(s));

	FUNC4(s);

	return (BUS_PROBE_DEFAULT);
}