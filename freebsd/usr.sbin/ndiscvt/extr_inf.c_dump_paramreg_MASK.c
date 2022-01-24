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
struct section {int dummy; } ;
struct reg {char* subkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct section const*,struct reg const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct section const*,struct reg const*) ; 
 int /*<<< orphan*/  FUNC2 (struct section const*,struct reg const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  ofp ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(const struct section *s, const struct reg *r, int devidx)
{
	const char *keyname;

	keyname = r->subkey + FUNC4("Ndi\\params\\");
	FUNC3(ofp, "\n\t{ \"%s\",", keyname);
	FUNC1(s, r);
	FUNC2(s, r);
	FUNC3(ofp, "\",");
	FUNC0(s, r, devidx);

	return;
}