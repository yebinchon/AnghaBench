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
typedef  int UBYTE ;

/* Variables and functions */
 int BLACK ; 
 int DKGREY ; 
 int LTGREY ; 
 int /*<<< orphan*/  M_FILL ; 
 int /*<<< orphan*/  M_NOFILL ; 
 int /*<<< orphan*/  SOLID ; 
 int WHITE ; 
 int /*<<< orphan*/  XOR ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

int FUNC8(void)
{
    UBYTE  a,b,c,d,e;
    c=0;
    /* Draw many characters on the screen with different fg and bg colours */
    for (a=0; a<=15; a++) {
	for (b=0; b<=15; b++) {
	    FUNC4(b,a);
	    d=a/4;
	    e=b/4;
	    if (d==e) {
		d=3-e;
	    }
	    FUNC2(d,e,SOLID);
	    FUNC5("%c",c++);
	} 
    }

    /* Draw two circles, a line, and two boxes in different drawing modes */
    FUNC2(LTGREY,WHITE,SOLID);
    FUNC1(140,20,15,M_FILL);
    FUNC2(BLACK,WHITE,SOLID);
    FUNC1(140,20,10,M_NOFILL);
    FUNC2(DKGREY,WHITE,XOR);
    FUNC1(120,40,30,M_FILL);
    FUNC6(0,0,159,143);
    FUNC2(BLACK,LTGREY,SOLID);
    FUNC0(0,130,40,143,M_NOFILL);
    FUNC0(50,130,90,143,M_FILL);

    /* Scroll the screen using the hardest method imaginable :) */
    for (c=0; c<=143; c++) {
	for (b=0; b<=142; b++) {
	    for (a=0; a<=159; a++) {
		FUNC2(FUNC3(a,b+1),WHITE,SOLID);
		FUNC7(a,b);
	    }
	    FUNC2(WHITE,WHITE,SOLID);
	}
	FUNC6(0,143,159,143);
    }
}