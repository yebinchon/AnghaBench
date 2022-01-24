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
struct unittype {scalar_t__ offset; int factor; scalar_t__ quantity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,char*,...) ; 
 scalar_t__ FUNC1 (struct unittype*,struct unittype*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* havestr ; 
 char* outputformat ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct unittype*) ; 
 scalar_t__ terse ; 
 scalar_t__ verbose ; 
 char* wantstr ; 

__attribute__((used)) static void 
FUNC5(struct unittype * have, struct unittype * want)
{
	double ans;
	char* oformat;

	if (FUNC1(have, want)) {
		FUNC3("conformability error\n");
		if (verbose)
			FUNC3("\t%s = ", havestr);
		else if (!terse)
			FUNC3("\t");
		FUNC4(have);
		if (!terse) {
			if (verbose)
				FUNC3("\t%s = ", wantstr);
			else
				FUNC3("\t");
			FUNC4(want);
		}
	}
	else if (have->offset != want->offset) {
		if (want->quantity)
			FUNC3("WARNING: conversion of non-proportional quantities.\n");
		if (have->quantity) {
			FUNC0(&oformat, "\t%s\n", outputformat);
			FUNC3(oformat,
			    (have->factor + have->offset-want->offset)/want->factor);
			FUNC2(oformat);
		}
		else {
			FUNC0(&oformat, "\t (-> x*%sg %sg)\n\t (<- y*%sg %sg)\n",
			    outputformat, outputformat, outputformat, outputformat);
			FUNC3(oformat,
			    have->factor / want->factor,
			    (have->offset-want->offset)/want->factor,
			    want->factor / have->factor,
			    (want->offset - have->offset)/have->factor);
		}
	}
	else {
		ans = have->factor / want->factor;

		if (verbose) {
			FUNC3("\t%s = ", havestr);
			FUNC3(outputformat, ans);
			FUNC3(" * %s", wantstr);
			FUNC3("\n");
		}
		else if (terse) {
			FUNC3(outputformat, ans);
			FUNC3("\n");
		}
		else {
			FUNC3("\t* ");
			FUNC3(outputformat, ans);
			FUNC3("\n");
		}

		if (verbose) {
			FUNC3("\t%s = (1 / ", havestr);
			FUNC3(outputformat, 1/ans);
			FUNC3(") * %s\n", wantstr);
		}
		else if (!terse) {
			FUNC3("\t/ ");
			FUNC3(outputformat, 1/ans);
			FUNC3("\n");
		}
	}
}