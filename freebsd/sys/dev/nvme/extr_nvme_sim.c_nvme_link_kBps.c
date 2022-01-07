
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nvme_controller {int dev; } ;


 int PCIEM_LINK_STA_SPEED ;
 int PCIEM_LINK_STA_WIDTH ;
 int PCIER_LINK_STA ;
 int nitems (int*) ;
 int pcie_read_config (int ,int ,int) ;

__attribute__((used)) static uint32_t
nvme_link_kBps(struct nvme_controller *ctrlr)
{
 uint32_t speed, lanes, link[] = { 1, 250000, 500000, 985000, 1970000 };
 uint32_t status;

 status = pcie_read_config(ctrlr->dev, PCIER_LINK_STA, 2);
 speed = status & PCIEM_LINK_STA_SPEED;
 lanes = (status & PCIEM_LINK_STA_WIDTH) >> 4;




 if (speed >= nitems(link))
  speed = 0;
 return link[speed] * lanes;
}
