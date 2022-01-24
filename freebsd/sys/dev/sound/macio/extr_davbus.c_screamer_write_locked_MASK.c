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
typedef  int u_int ;
struct davbus_softc {int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int DAVBUS_CODEC_BUSY ; 
 int /*<<< orphan*/  DAVBUS_CODEC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int SCREAMER_CODEC_EMSEL0 ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct davbus_softc *d, u_int reg, u_int val)
{
	u_int 		x;

	FUNC1(val == (val & 0xfff), ("bad val"));

	while (FUNC2(d->reg, DAVBUS_CODEC_CTRL) & DAVBUS_CODEC_BUSY)
		FUNC0(100);

	x = reg;
	x |= SCREAMER_CODEC_EMSEL0;
	x |= val;
	FUNC3(d->reg, DAVBUS_CODEC_CTRL, x);

	while (FUNC2(d->reg, DAVBUS_CODEC_CTRL) & DAVBUS_CODEC_BUSY)
		FUNC0(100);
}