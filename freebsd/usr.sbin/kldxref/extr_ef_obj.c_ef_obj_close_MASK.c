#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* elf_file_t ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ nprogtab; int nrel; int nrela; TYPE_1__* ef_efile; struct TYPE_6__* shstrtab; struct TYPE_6__* ddbstrtab; struct TYPE_6__* ddbsymtab; struct TYPE_6__* relatab; struct TYPE_6__* rela; struct TYPE_6__* reltab; struct TYPE_6__* rel; struct TYPE_6__* progtab; struct TYPE_6__* address; struct TYPE_6__* e_shdr; struct TYPE_6__* ef_name; int /*<<< orphan*/  ef_fd; } ;
struct TYPE_5__ {int /*<<< orphan*/ * ef_ef; int /*<<< orphan*/ * ef_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC2(elf_file_t ef)
{
	int i;

	FUNC0(ef->ef_fd);
	if (ef->ef_name)
		FUNC1(ef->ef_name);
	if (ef->e_shdr != NULL)
		FUNC1(ef->e_shdr);
	if (ef->size != 0)
		FUNC1(ef->address);
	if (ef->nprogtab != 0)
		FUNC1(ef->progtab);
	if (ef->nrel != 0) {
		for (i = 0; i < ef->nrel; i++)
			if (ef->reltab[i].rel != NULL)
				FUNC1(ef->reltab[i].rel);
		FUNC1(ef->reltab);
	}
	if (ef->nrela != 0) {
		for (i = 0; i < ef->nrela; i++)
			if (ef->relatab[i].rela != NULL)
				FUNC1(ef->relatab[i].rela);
		FUNC1(ef->relatab);
	}
	if (ef->ddbsymtab != NULL)
		FUNC1(ef->ddbsymtab);
	if (ef->ddbstrtab != NULL)
		FUNC1(ef->ddbstrtab);
	if (ef->shstrtab != NULL)
		FUNC1(ef->shstrtab);
	ef->ef_efile->ef_ops = NULL;
	ef->ef_efile->ef_ef = NULL;
	FUNC1(ef);

	return (0);
}