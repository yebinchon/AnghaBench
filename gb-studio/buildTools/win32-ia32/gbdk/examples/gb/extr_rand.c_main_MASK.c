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
typedef  int UWORD ;
typedef  int UBYTE ;

/* Variables and functions */
 int DIV_REG ; 
 int /*<<< orphan*/  DKGREY ; 
 int /*<<< orphan*/  LTGREY ; 
 int /*<<< orphan*/  SOLID ; 
 int* accu ; 
 int* accua ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 () ; 
 int seed ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void)
{
  UBYTE r, s, t, u;

  for(r = 0; r != 80; r++) {
    accu[r] = 0;
    accua[r] = 0;
  }

  /* We use the DIV register to get a random initial seed */
  FUNC3("Getting seed");
  FUNC3("Push any key (1)");
  FUNC5(0xFF);
  FUNC6();
  seed = DIV_REG;
  FUNC3("Push any key (2)");
  FUNC5(0xFF);
  FUNC6();
  seed |= (UWORD)DIV_REG << 8;

  /* initarand() calls initrand() */
  FUNC1(seed);

  do {
    r = FUNC4();
    s = FUNC0();

    if(r < 80) {
      t = ++accu[r];
      FUNC2(r, 144-t, LTGREY, SOLID);
    }
    if(s < 80) {
      u = ++accua[s];
      FUNC2(s+80, 144-u, DKGREY, SOLID);
    }
  }
  while(t != 144 && u != 144); 
}