#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fifolog_reader {int olen; int /*<<< orphan*/  magic; TYPE_1__* ff; int /*<<< orphan*/ * obuf; } ;
struct TYPE_2__ {int recsize; int /*<<< orphan*/  zs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FIFOLOG_READER_MAGIC ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 char* FUNC3 (TYPE_1__**,char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

struct fifolog_reader *
FUNC5(const char *fname)
{
	const char *retval;
	struct fifolog_reader *fr;
	int i;

	fr = FUNC1(1, sizeof(*fr));
	if (fr == NULL)
		FUNC2(1, "Cannot malloc");

	retval = FUNC3(&fr->ff, fname, 0);
	if (retval != NULL)
		FUNC2(1, "%s", retval);

	fr->obuf = FUNC1(16, fr->ff->recsize);
	if (fr->obuf == NULL)
		FUNC2(1, "Cannot malloc");
	fr->olen = fr->ff->recsize * 16;

	i = FUNC4(fr->ff->zs);
	FUNC0(i == Z_OK);

	fr->magic = FIFOLOG_READER_MAGIC;
	return (fr);
}