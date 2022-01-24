#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int hi; int lo; } ;
struct TYPE_6__ {int b3; } ;
union bil {unsigned long l; TYPE_2__ i; TYPE_1__ b; } ;
typedef  int /*<<< orphan*/  johan ;
struct TYPE_9__ {int b3; int i12; scalar_t__ b0; } ;
struct TYPE_8__ {int b0; int b2; int b3; int b1; } ;
struct TYPE_10__ {TYPE_4__ bi; TYPE_3__ b; } ;

/* Variables and functions */
 int /*<<< orphan*/  _asm ; 
 TYPE_5__* FUNC0 (unsigned long) ; 

unsigned long
FUNC1 (unsigned long a, unsigned long b)	// in future: _mullong
{
        union bil t;

        t.i.hi = FUNC0(a)->b.b0 * FUNC0(b)->b.b2;       // A
        t.i.lo = FUNC0(a)->b.b0 * FUNC0(b)->b.b0;       // A
	_asm ;johan _endasm;
        t.b.b3 += FUNC0(a)->b.b3 *
                                  FUNC0(b)->b.b0;       // G
        t.b.b3 += FUNC0(a)->b.b2 *
                                  FUNC0(b)->b.b1;       // F
        t.i.hi += FUNC0(a)->b.b2 * FUNC0(b)->b.b0;      // E <- b lost in .lst
        // bcast(a)->i.hi is free !
        t.i.hi += FUNC0(a)->b.b1 * FUNC0(b)->b.b1;      // D <- b lost in .lst

        FUNC0(a)->bi.b3 = FUNC0(a)->b.b1 *
                                          FUNC0(b)->b.b2;
        FUNC0(a)->bi.i12 = FUNC0(a)->b.b1 *
                           FUNC0(b)->b.b0;              // C

        FUNC0(b)->bi.b3 = FUNC0(a)->b.b0 *
                                          FUNC0(b)->b.b3;
        FUNC0(b)->bi.i12 = FUNC0(a)->b.b0 *
                           FUNC0(b)->b.b1;              // B
        FUNC0(b)->bi.b0 = 0;                            // B
        FUNC0(a)->bi.b0 = 0;                            // C
        t.l += a;

        return t.l + b;
}