#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int f; int l164; int l33; int /*<<< orphan*/  l73; int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC1(e*a,int m){{if(!(a->f!=1))goto l807;return;
l807:;}a->l164=m?1:0;{if(!(a->l164))goto l808;a->l33|=2;goto l809;
l808:;a->l33&=~2;l809:;}FUNC0(a->d,a->l73,a->l33);}