#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ f; int l122; scalar_t__ l86; TYPE_1__* d; } ;
typedef  TYPE_2__ e ;
struct TYPE_5__ {int f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 

void FUNC1(e*a,int m){{if(!(a->f==0||a->d->f!=2))goto
l865;return;l865:;}a->l122=m;{if(!(a->l122==0&&a->l86))goto l866;a->
l86=0;l866:;}FUNC0(a);}