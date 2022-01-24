#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_13__ {int /*<<< orphan*/  pattern; int /*<<< orphan*/  buffer; int /*<<< orphan*/  size; int /*<<< orphan*/  off; } ;
typedef  TYPE_1__ qla_wr_flash_t ;
struct TYPE_14__ {int /*<<< orphan*/  rd; int /*<<< orphan*/  val; int /*<<< orphan*/  reg; int /*<<< orphan*/  direct; } ;
typedef  TYPE_2__ qla_reg_val_t ;
struct TYPE_15__ {int /*<<< orphan*/  rev_id; int /*<<< orphan*/  subsys_dev_id; int /*<<< orphan*/  subsys_ven_id; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  ven_id; } ;
typedef  TYPE_3__ qla_rd_pci_ids_t ;
struct TYPE_16__ {int /*<<< orphan*/  data; int /*<<< orphan*/  off; } ;
typedef  TYPE_4__ qla_rd_flash_t ;
struct TYPE_17__ {int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_5__ qla_host_t ;
struct TYPE_18__ {int /*<<< orphan*/  size; int /*<<< orphan*/  off; } ;
typedef  TYPE_6__ qla_erase_flash_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PCIR_REVID ; 
#define  QLA_ERASE_FLASH 132 
#define  QLA_RDWR_REG 131 
#define  QLA_RD_FLASH 130 
#define  QLA_RD_PCI_IDS 129 
#define  QLA_WR_FLASH 128 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
        struct thread *td)
{
        qla_host_t *ha;
        int rval = 0;
        qla_reg_val_t *rv;
        qla_rd_flash_t *rdf;
	qla_wr_flash_t *wrf;
	qla_rd_pci_ids_t *pci_ids;
	device_t pci_dev;

        if ((ha = (qla_host_t *)dev->si_drv1) == NULL)
                return ENXIO;

	pci_dev= ha->pci_dev;

        switch(cmd) {

        case QLA_RDWR_REG:

                rv = (qla_reg_val_t *)data;

                if (rv->direct) {
                        if (rv->rd) {
                                rv->val = FUNC0(ha, rv->reg);
                        } else {
                                FUNC1(ha, rv->reg, rv->val);
                        }
                } else {
                        if ((rval = FUNC9(ha, rv->reg, &rv->val,
                                rv->rd)))
                                rval = ENXIO;
                }
                break;

        case QLA_RD_FLASH:
                rdf = (qla_rd_flash_t *)data;
                if ((rval = FUNC8(ha, rdf->off, &rdf->data)))
                        rval = ENXIO;
                break;

        case QLA_WR_FLASH:
                wrf = (qla_wr_flash_t *)data;
                if ((rval = FUNC10(ha, wrf->off, wrf->size,
					wrf->buffer, wrf->pattern)))
                        rval = ENXIO;
                break;


	case QLA_ERASE_FLASH:
		if (FUNC7(ha, ((qla_erase_flash_t *)data)->off,
			((qla_erase_flash_t *)data)->size))
			rval = ENXIO;
		break;

	case QLA_RD_PCI_IDS:
		pci_ids = (qla_rd_pci_ids_t *)data;
		pci_ids->ven_id = FUNC5(pci_dev);
		pci_ids->dev_id = FUNC2(pci_dev);
		pci_ids->subsys_ven_id = FUNC4(pci_dev);
		pci_ids->subsys_dev_id = FUNC3(pci_dev);
		pci_ids->rev_id = FUNC6(pci_dev, PCIR_REVID, 1);
		break;
		
        default:
                break;
        }

        return rval;
}