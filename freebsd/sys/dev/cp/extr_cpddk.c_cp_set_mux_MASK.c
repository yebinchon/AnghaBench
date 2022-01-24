#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int l30; int f; int l116; TYPE_2__* k; } ;
typedef  TYPE_1__ s ;
struct TYPE_14__ {int f; int /*<<< orphan*/  l61; int /*<<< orphan*/  j; int /*<<< orphan*/  v; int /*<<< orphan*/  l34; } ;
typedef  TYPE_2__ e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9(s*b,int l183){e*a;int l555
=(l183&&!b->l30);{if(!(b->f!=5&&b->f!=10&&b->f!=11&&b->f!=9))goto l581
;return;l581:;};switch(l183){case 0:case 2:b->l30=l183;break;default:
b->l30=1;}{if(!(!b->l30))goto l609;FUNC6(b,0);l609:;}{if(!(b->l30))goto
l596;b->l116|=1;goto l566;l596:;b->l116&=~1;l566:;}FUNC3(b,8,b->l116);{if
(!(!b->k->l34))goto l559;{FUNC0(b->k+1,b->k[1].v);}l559:;}{a=b->
k;l272:if(!(a<b->k+4))goto l256;goto l287;l304:++a;goto l272;l287:{if
(!(a->f==3))goto l280;{FUNC5(a);FUNC7(a);FUNC8(a);FUNC2(a,a->j);}
goto l237;l280:;{if(!(a->f==6))goto l233;{FUNC2(a,a->j);}l233:;}
l237:;}goto l304;l256:;}{if(!(l555))goto l230;{{if(!(b->l30!=2))goto
l244;FUNC4(b);l244:;}FUNC2(b->k,b->k->j);}l230:;}{if(!(b->l30))goto
l245;FUNC1(b->k,b->k->l61);l245:;}}