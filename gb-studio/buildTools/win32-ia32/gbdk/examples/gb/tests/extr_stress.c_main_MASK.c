#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UWORD ;
typedef  int UBYTE ;
struct TYPE_3__ {void* h; void* l; } ;
struct TYPE_4__ {int /*<<< orphan*/  w; TYPE_1__ b; } ;

/* Variables and functions */
 void* DIV_REG ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int* FUNC2 (int) ; 
 scalar_t__ malloc_first ; 
 int /*<<< orphan*/  FUNC3 (int**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 () ; 
 TYPE_2__ seed ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(void) 
{
    UBYTE *base[32];
    UBYTE offset;
    UWORD worked = 0;
    UBYTE done = 0;
    UBYTE tests = 0;
    UWORD size;
    UWORD total = 0;

#ifdef GETSEED
    puts("Getting seed");
    puts("Push any key (1)");
    waitpad(0xFF);
    waitpadup();
    seed.b.l = DIV_REG;
    puts("Push any key (2)");
    waitpad(0xFF);
    waitpadup();
    seed.b.h = DIV_REG;

    /* initarand() calls initrand() */
    initrand(seed.w);
#endif
    FUNC4("Testing...\n");

    /* Wipe it */
    FUNC3(base, 0, 32*sizeof(UBYTE *));

    for (tests = 0; tests < 20; tests++) {
	/* And go... */
	done = 0;
	worked = 0;
	malloc_first = 0;

	while (!done) {
	    offset = FUNC6()&0x1f;
	    if (base[offset] != NULL) {
		FUNC0(base[offset]);
		//		malloc_gc();
	    }
	    
	    base[offset] = FUNC2((UWORD)FUNC6() + (UWORD)(FUNC6()&0x3f));
	    if (base[offset] == NULL) {
		done = 1;
	    }
	    worked++;
	    if (!(worked&0xff)) {
		FUNC4("%lu\r", worked);
		//		gotoxy(0, posy());
	    }
	}
	total += worked;
	FUNC4("%lu worked.\n", worked);
    }
    FUNC4("Total: %lu\n", total);
}