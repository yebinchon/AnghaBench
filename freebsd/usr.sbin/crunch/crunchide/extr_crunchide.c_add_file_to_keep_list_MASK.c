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
typedef  int /*<<< orphan*/  symbol ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void
FUNC7(char *filename)
{
    FILE *keepf;
    char symbol[1024];
    int len;

    if((keepf = FUNC3(filename, "r")) == NULL) {
	FUNC4(filename);
	FUNC6();
    }

    while(FUNC2(symbol, sizeof(symbol), keepf)) {
	len = FUNC5(symbol);
	if(len && symbol[len-1] == '\n')
	    symbol[len-1] = '\0';

	FUNC0(symbol);
    }
    FUNC1(keepf);
}