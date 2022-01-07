
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_sdio_dev {int state; int bus_if; } ;
typedef enum brcmf_sdiod_state { ____Placeholder_brcmf_sdiod_state } brcmf_sdiod_state ;


 int BRCMF_BUS_DOWN ;
 int BRCMF_BUS_UP ;


 int BRCMF_SDIOD_NOMEDIUM ;
 int brcmf_bus_change_state (int ,int ) ;

void brcmf_sdiod_change_state(struct brcmf_sdio_dev *sdiodev,
         enum brcmf_sdiod_state state)
{
 if (sdiodev->state == BRCMF_SDIOD_NOMEDIUM ||
     state == sdiodev->state)
  return;


 switch (sdiodev->state) {
 case 129:

  brcmf_bus_change_state(sdiodev->bus_if, BRCMF_BUS_DOWN);
  break;
 case 128:

  if (state == 129)
   brcmf_bus_change_state(sdiodev->bus_if, BRCMF_BUS_UP);
  break;
 default:
  break;
 }
 sdiodev->state = state;
}
