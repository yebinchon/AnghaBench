#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int f; int l52; int l36; int l26; int /*<<< orphan*/  l134; int /*<<< orphan*/  y; int /*<<< orphan*/  l64; int /*<<< orphan*/  d; scalar_t__ x; int /*<<< orphan*/  v; int /*<<< orphan*/  p; } ;
typedef  TYPE_1__ e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC4(e*a,int m){{if(!(a->f==3))goto l679;a->l52=(m!=0);l679:;
}{if(!(a->l52))goto l550;a->v=a->p;l550:;}FUNC1(a,a->v);a->l36|=
1310728;{if(!(a->l52))goto l681;{a->l26|=64;a->l36|=4194305;}goto l548
;l681:;{a->l26&=~64;a->l36&=~4194305;}l548:;} * (volatile unsigned
long* )((a)->x+16)=a->l36;{if(!(a->f==3))goto l683;{FUNC3(a->d,a->l64,a->
l26);FUNC0(a,a->y);FUNC2(a,a->l134);}l683:;}}