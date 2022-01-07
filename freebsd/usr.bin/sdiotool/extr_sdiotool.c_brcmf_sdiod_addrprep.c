
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef scalar_t__ u32 ;
struct brcmf_sdio_dev {scalar_t__ sbwad; } ;


 scalar_t__ SBSDIO_SB_ACCESS_2_4B_FLAG ;
 scalar_t__ SBSDIO_SB_OFT_ADDR_MASK ;
 int brcmf_sdiod_set_sbaddr_window (struct brcmf_sdio_dev*,scalar_t__) ;

__attribute__((used)) static int
brcmf_sdiod_addrprep(struct brcmf_sdio_dev *sdiodev, uint width, u32 *addr)
{
 uint bar0 = *addr & ~SBSDIO_SB_OFT_ADDR_MASK;
 int err = 0;

 if (bar0 != sdiodev->sbwad) {
  err = brcmf_sdiod_set_sbaddr_window(sdiodev, bar0);
  if (err)
   return err;

  sdiodev->sbwad = bar0;
 }

 *addr &= SBSDIO_SB_OFT_ADDR_MASK;

 if (width == 4)
  *addr |= SBSDIO_SB_ACCESS_2_4B_FLAG;

 return 0;
}
