#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  x; int /*<<< orphan*/  d; } ;
typedef  TYPE_1__ e ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,unsigned char) ; 
 unsigned long FUNC3 (TYPE_1__*,unsigned char) ; 
 unsigned long FUNC4 (TYPE_1__*,int) ; 
 unsigned long FUNC5 (TYPE_1__*,unsigned char,int) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,unsigned char) ; 

unsigned long FUNC7(e*a,int l194,int z,unsigned long r){
switch(l194){case 0:r=FUNC6(a->d,(unsigned char)z);break;case 1:r=FUNC3(a,(
unsigned char)z);break;case 2:r=FUNC5(a,(unsigned char)z,255);break;
case 3:r=FUNC4(a,16);break;case 4:r=FUNC6(a->d,(unsigned char)z);FUNC1(a->d,(
unsigned char)z,(unsigned char)r);break;case 9:FUNC1(a->d,(unsigned char)z
,(unsigned char)r);r=FUNC6(a->d,(unsigned char)z);break;case 5:FUNC1(a->d,(
unsigned char)z,(unsigned char)r);break;case 6:FUNC2(a,16,(unsigned
char)r);break;case 7: * (unsigned long* )(a->x+z)=r;r= * (unsigned
long* )(a->x+z);break;case 8:FUNC0(a,(unsigned char)z,(unsigned char)r);r
=FUNC3(a,(unsigned char)z);break;}return r;}