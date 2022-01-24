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
struct mz_header {char* mz_signature; int /*<<< orphan*/  mz_lfanew; } ;
struct executable {scalar_t__ x_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 void FUNC1 (struct executable*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct executable*,int /*<<< orphan*/ ,int,char*) ; 

void
FUNC3(struct executable *x)
{
	const struct mz_header *mz;

	FUNC2(x, 0, sizeof(*mz), "MZ header");

	mz = (struct mz_header *)x->x_buf;
	if (mz->mz_signature[0] != 'M' || mz->mz_signature[1] != 'Z')
		FUNC0(1, "MZ header not found");

	return (FUNC1(x, mz->mz_lfanew));
}