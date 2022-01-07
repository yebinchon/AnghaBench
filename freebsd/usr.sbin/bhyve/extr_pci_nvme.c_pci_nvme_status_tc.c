
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int NVME_STATUS_MASK ;
 int NVME_STATUS_SCT_MASK ;
 int NVME_STATUS_SCT_SHIFT ;
 int NVME_STATUS_SC_MASK ;
 int NVME_STATUS_SC_SHIFT ;

__attribute__((used)) static __inline void
pci_nvme_status_tc(uint16_t *status, uint16_t type, uint16_t code)
{

 *status &= ~NVME_STATUS_MASK;
 *status |= (type & NVME_STATUS_SCT_MASK) << NVME_STATUS_SCT_SHIFT |
  (code & NVME_STATUS_SC_MASK) << NVME_STATUS_SC_SHIFT;
}
