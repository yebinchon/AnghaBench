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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char**) ; 

int
FUNC13(int argc, char *argv[])
{
	uint16_t *eep = NULL;
	eep = FUNC0(4096, sizeof(int16_t));

	if (argc < 2)
		FUNC12(argv);

	FUNC10(argv[1], eep);

	FUNC1(eep);
	FUNC4(eep);

	/* 2.4ghz */
	FUNC11("\n2.4ghz:\n");
	FUNC5(eep, 1);
	/* 5ghz */
	FUNC11("\n5ghz:\n");
	FUNC5(eep, 0);
	FUNC11("\n");

	FUNC2(eep);
	FUNC11("\n");

	FUNC7(eep);
	FUNC11("\n");

	FUNC3(eep);
	FUNC11("\n");

	FUNC6(eep);
	FUNC11("\n");

	FUNC9(eep);
	FUNC8(0);
}