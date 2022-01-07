
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_13__ {int pattern; int buffer; int size; int off; } ;
typedef TYPE_1__ qla_wr_flash_t ;
struct TYPE_14__ {int rd; int val; int reg; int direct; } ;
typedef TYPE_2__ qla_reg_val_t ;
struct TYPE_15__ {int rev_id; int subsys_dev_id; int subsys_ven_id; int dev_id; int ven_id; } ;
typedef TYPE_3__ qla_rd_pci_ids_t ;
struct TYPE_16__ {int data; int off; } ;
typedef TYPE_4__ qla_rd_flash_t ;
struct TYPE_17__ {int pci_dev; } ;
typedef TYPE_5__ qla_host_t ;
struct TYPE_18__ {int size; int off; } ;
typedef TYPE_6__ qla_erase_flash_t ;
typedef int device_t ;
typedef scalar_t__ caddr_t ;


 int ENXIO ;
 int PCIR_REVID ;





 int READ_OFFSET32 (TYPE_5__*,int ) ;
 int WRITE_OFFSET32 (TYPE_5__*,int ,int ) ;
 int pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_get_vendor (int ) ;
 int pci_read_config (int ,int ,int) ;
 int qla_erase_flash (TYPE_5__*,int ,int ) ;
 int qla_rd_flash32 (TYPE_5__*,int ,int *) ;
 int qla_rdwr_indreg32 (TYPE_5__*,int ,int *,int ) ;
 int qla_wr_flash_buffer (TYPE_5__*,int ,int ,int ,int ) ;

int
qla_eioctl(struct cdev *dev, u_long cmd, caddr_t data, int fflag,
        struct thread *td)
{
        qla_host_t *ha;
        int rval = 0;
        qla_reg_val_t *rv;
        qla_rd_flash_t *rdf;
 qla_wr_flash_t *wrf;
 qla_rd_pci_ids_t *pci_ids;
 device_t pci_dev;

        if ((ha = (qla_host_t *)dev->si_drv1) == ((void*)0))
                return ENXIO;

 pci_dev= ha->pci_dev;

        switch(cmd) {

        case 131:

                rv = (qla_reg_val_t *)data;

                if (rv->direct) {
                        if (rv->rd) {
                                rv->val = READ_OFFSET32(ha, rv->reg);
                        } else {
                                WRITE_OFFSET32(ha, rv->reg, rv->val);
                        }
                } else {
                        if ((rval = qla_rdwr_indreg32(ha, rv->reg, &rv->val,
                                rv->rd)))
                                rval = ENXIO;
                }
                break;

        case 130:
                rdf = (qla_rd_flash_t *)data;
                if ((rval = qla_rd_flash32(ha, rdf->off, &rdf->data)))
                        rval = ENXIO;
                break;

        case 128:
                wrf = (qla_wr_flash_t *)data;
                if ((rval = qla_wr_flash_buffer(ha, wrf->off, wrf->size,
     wrf->buffer, wrf->pattern)))
                        rval = ENXIO;
                break;


 case 132:
  if (qla_erase_flash(ha, ((qla_erase_flash_t *)data)->off,
   ((qla_erase_flash_t *)data)->size))
   rval = ENXIO;
  break;

 case 129:
  pci_ids = (qla_rd_pci_ids_t *)data;
  pci_ids->ven_id = pci_get_vendor(pci_dev);
  pci_ids->dev_id = pci_get_device(pci_dev);
  pci_ids->subsys_ven_id = pci_get_subvendor(pci_dev);
  pci_ids->subsys_dev_id = pci_get_subdevice(pci_dev);
  pci_ids->rev_id = pci_read_config(pci_dev, PCIR_REVID, 1);
  break;

        default:
                break;
        }

        return rval;
}
