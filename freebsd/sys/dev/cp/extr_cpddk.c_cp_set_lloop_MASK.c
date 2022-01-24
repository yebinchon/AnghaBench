#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int f; scalar_t__ y; int l53; int l26; TYPE_6__* d; int /*<<< orphan*/  l64; int /*<<< orphan*/  l38; } ;
typedef  TYPE_1__ e ;
struct TYPE_11__ {int f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(e*a,int m){{if(!((a->f==1&&a->y==0)||a->f==6))goto l780;
return;l780:;}a->l53=(m!=0);{if(!(a->f==3))goto l781;{{if(!(a->l53))goto
l390;{a->l26|=16;{if(!(a->l38))goto l783;FUNC1(a,168,64);l783:;}}goto l391
;l390:;{a->l26&=~16;{if(!(a->l38))goto l785;FUNC1(a,168,0);l785:;}}l391:;
}FUNC2(a->d,a->l64,a->l26);FUNC5(a);FUNC4(a);}goto l392;l781:;{if(!(a->f==2
))goto l787;{unsigned char l203=1|4;{if(!(a->l53))goto l788;l203|=64;
l788:;}FUNC3(a,16,l203);}goto l801;l787:;{if(!(a->d->f==2))goto l802;{
FUNC6(a);}goto l803;l802:;FUNC0(a,a->y);l803:;}l801:;}l392:;}}