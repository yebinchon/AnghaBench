#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct firewire_comm {TYPE_5__* crom_src_buf; int /*<<< orphan*/ * crom_root; struct crom_src* crom_src; TYPE_4__ eui; int /*<<< orphan*/  speed; int /*<<< orphan*/  maxrec; } ;
struct TYPE_7__ {int /*<<< orphan*/  lo; int /*<<< orphan*/  hi; } ;
struct TYPE_8__ {int irmc; int cmc; int isc; int bmc; int cyc_clk_acc; TYPE_2__ eui64; int /*<<< orphan*/  link_spd; int /*<<< orphan*/  generation; int /*<<< orphan*/  max_rom; int /*<<< orphan*/  max_rec; scalar_t__ pmc; int /*<<< orphan*/  bus_name; } ;
struct TYPE_6__ {int info_len; } ;
struct crom_src {int /*<<< orphan*/  chunk_list; TYPE_3__ businfo; TYPE_1__ hdr; } ;
struct TYPE_10__ {int /*<<< orphan*/  root; struct crom_src src; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_BUS_NAME_IEEE1394 ; 
 int /*<<< orphan*/  FW_GENERATION_CHANGEABLE ; 
 int /*<<< orphan*/  MAXROM_4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct crom_src*,int) ; 

__attribute__((used)) static void
FUNC2(struct firewire_comm *fc)
{
	struct crom_src *src;

	src = &fc->crom_src_buf->src;
	FUNC1(src, sizeof(struct crom_src));

	/* BUS info sample */
	src->hdr.info_len = 4;

	src->businfo.bus_name = CSR_BUS_NAME_IEEE1394;

	src->businfo.irmc = 1;
	src->businfo.cmc = 1;
	src->businfo.isc = 1;
	src->businfo.bmc = 1;
	src->businfo.pmc = 0;
	src->businfo.cyc_clk_acc = 100;
	src->businfo.max_rec = fc->maxrec;
	src->businfo.max_rom = MAXROM_4;
#define FW_GENERATION_CHANGEABLE 2
	src->businfo.generation = FW_GENERATION_CHANGEABLE;
	src->businfo.link_spd = fc->speed;

	src->businfo.eui64.hi = fc->eui.hi;
	src->businfo.eui64.lo = fc->eui.lo;

	FUNC0(&src->chunk_list);

	fc->crom_src = src;
	fc->crom_root = &fc->crom_src_buf->root;
}