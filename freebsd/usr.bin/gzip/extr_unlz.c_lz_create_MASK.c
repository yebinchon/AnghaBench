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
struct lz_decoder {int dict_size; int wrapped; int /*<<< orphan*/ * fin; int /*<<< orphan*/  rdec; int /*<<< orphan*/ * obuf; int /*<<< orphan*/  crc; scalar_t__ spos; scalar_t__ ppos; scalar_t__ pos; int /*<<< orphan*/ * fout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct lz_decoder*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct lz_decoder*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct lz_decoder *lz, int fin, int fdout, int dict_size)
{
	FUNC5(lz, 0, sizeof(*lz));

	lz->fin = FUNC1(FUNC0(fin), "r");
	if (lz->fin == NULL)
		goto out;

	lz->fout = FUNC1(FUNC0(fdout), "w");
	if (lz->fout == NULL)
		goto out;

	lz->pos = lz->ppos = lz->spos = 0;
	lz->crc = ~0;
	lz->dict_size = dict_size;
	lz->wrapped = false;

	lz->obuf = FUNC4(dict_size);
	if (lz->obuf == NULL)
		goto out;

	if (FUNC3(&lz->rdec, lz->fin) == -1)
		goto out;
	return 0;
out:
	FUNC2(lz);
	return -1;
}