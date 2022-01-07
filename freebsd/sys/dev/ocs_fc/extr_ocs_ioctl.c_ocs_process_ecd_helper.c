
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_19__ {int dev; TYPE_1__* reg; } ;
typedef TYPE_2__ ocs_t ;
struct TYPE_20__ {int cmd; size_t bar; int data; int offset; } ;
typedef TYPE_3__ ocs_ioctl_ecd_helper_t ;
typedef int int32_t ;
struct TYPE_18__ {int * res; } ;


 int EFAULT ;
 size_t PCI_MAX_BAR ;
 int device_printf (int ,char*,size_t) ;
 int ocs_config_read16 (TYPE_2__*,int ) ;
 int ocs_config_read32 (TYPE_2__*,int ) ;
 int ocs_config_read8 (TYPE_2__*,int ) ;
 int ocs_config_write16 (TYPE_2__*,int ,int ) ;
 int ocs_config_write32 (TYPE_2__*,int ,int ) ;
 int ocs_config_write8 (TYPE_2__*,int ,int ) ;
 int ocs_reg_read16 (TYPE_2__*,size_t,int ) ;
 int ocs_reg_read32 (TYPE_2__*,size_t,int ) ;
 int ocs_reg_read8 (TYPE_2__*,size_t,int ) ;
 int ocs_reg_write16 (TYPE_2__*,size_t,int ,int ) ;
 int ocs_reg_write32 (TYPE_2__*,size_t,int ,int ) ;
 int ocs_reg_write8 (TYPE_2__*,size_t,int ,int ) ;

__attribute__((used)) static int
ocs_process_ecd_helper (ocs_t *ocs, ocs_ioctl_ecd_helper_t *req)
{
 int32_t rc = 0;
 uint8_t v8;
 uint16_t v16;
 uint32_t v32;



 switch(req->cmd) {
 case 137:
 case 139:
 case 138:
 case 134:
 case 136:
 case 135:
  if (req->bar >= PCI_MAX_BAR) {
   device_printf(ocs->dev, "Error: bar %d out of range\n", req->bar);
   return -EFAULT;
  }
  if (ocs->reg[req->bar].res == ((void*)0)) {
   device_printf(ocs->dev, "Error: bar %d not defined\n", req->bar);
   return -EFAULT;
  }
  break;
 default:
  break;
 }

 switch(req->cmd) {
 case 131:
  v8 = ocs_config_read8(ocs, req->offset);
  req->data = v8;
  break;
 case 133:
  v16 = ocs_config_read16(ocs, req->offset);
  req->data = v16;
  break;
 case 132:
  v32 = ocs_config_read32(ocs, req->offset);
  req->data = v32;
  break;
 case 128:
  ocs_config_write8(ocs, req->offset, req->data);
  break;
 case 130:
  ocs_config_write16(ocs, req->offset, req->data);
  break;
 case 129:
  ocs_config_write32(ocs, req->offset, req->data);
  break;
 case 137:
  req->data = ocs_reg_read8(ocs, req->bar, req->offset);
  break;
 case 139:
  req->data = ocs_reg_read16(ocs, req->bar, req->offset);
  break;
 case 138:
  req->data = ocs_reg_read32(ocs, req->bar, req->offset);
  break;
 case 134:
  ocs_reg_write8(ocs, req->bar, req->offset, req->data);
  break;
 case 136:
  ocs_reg_write16(ocs, req->bar, req->offset, req->data);
  break;
 case 135:
  ocs_reg_write32(ocs, req->bar, req->offset, req->data);
  break;
 default:
  device_printf(ocs->dev, "Invalid helper command=%d\n", req->cmd);
  break;
 }

 return rc;
}
