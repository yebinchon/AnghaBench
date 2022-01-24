#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  sli4_sge_t ;
struct TYPE_7__ {TYPE_3__* hio; } ;
typedef  TYPE_2__ ocs_io_t ;
struct TYPE_6__ {int /*<<< orphan*/ * virt; int /*<<< orphan*/  phys; } ;
struct TYPE_8__ {scalar_t__ n_sge; scalar_t__ def_sgl_count; TYPE_1__* ovfl_sgl; TYPE_1__* sgl; TYPE_1__ def_sgl; } ;
typedef  TYPE_3__ ocs_hw_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,scalar_t__,scalar_t__,...) ; 

__attribute__((used)) static void FUNC3(ocs_io_t *io)
{
	ocs_hw_io_t *hio = io->hio;
	sli4_sge_t *data = NULL;
	uint32_t *dword = NULL;
	uint32_t i;
	uint32_t n_sge;

	FUNC2(io, "def_sgl at 0x%x 0x%08x\n",
		      FUNC0(hio->def_sgl.phys),
		      FUNC1(hio->def_sgl.phys));
	n_sge = (hio->sgl == &hio->def_sgl ? hio->n_sge : hio->def_sgl_count);
	for (i = 0, data = hio->def_sgl.virt; i < n_sge; i++, data++) {
		dword = (uint32_t*)data;

		FUNC2(io, "SGL %2d 0x%08x 0x%08x 0x%08x 0x%08x\n",
			 i, dword[0], dword[1], dword[2], dword[3]);

		if (dword[2] & (1U << 31)) {
			break;
		}
	}

	if (hio->ovfl_sgl != NULL &&
		hio->sgl == hio->ovfl_sgl) {
		FUNC2(io, "Overflow at 0x%x 0x%08x\n",
			      FUNC0(hio->ovfl_sgl->phys),
			      FUNC1(hio->ovfl_sgl->phys));
		for (i = 0, data = hio->ovfl_sgl->virt; i < hio->n_sge; i++, data++) {
			dword = (uint32_t*)data;

			FUNC2(io, "SGL %2d 0x%08x 0x%08x 0x%08x 0x%08x\n",
				 i, dword[0], dword[1], dword[2], dword[3]);
			if (dword[2] & (1U << 31)) {
				break;
			}
		}
	}

}