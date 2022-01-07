
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct brcmf_sdio_dev {scalar_t__ state; } ;
typedef scalar_t__ s32 ;


 scalar_t__ BRCMF_SDIOD_NOMEDIUM ;
 int ENOMEDIUM ;
 int REG_F0_REG_MASK ;
 int SBSDIO_FUNC1_SLEEPCSR ;
 int SDIO ;
 scalar_t__ SDIOH_API_ACCESS_RETRY_LIMIT ;
 int SDIO_FUNC_0 ;
 int SDIO_FUNC_1 ;
 int brcmf_dbg (int ,char*,char*,int ,int,int) ;
 int brcmf_err (char*,char*,int ,int,int) ;
 int brcmf_sdiod_change_state (struct brcmf_sdio_dev*,scalar_t__) ;
 int brcmf_sdiod_request_data (struct brcmf_sdio_dev*,int ,int,int ,void*,int) ;
 int memset (void*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int brcmf_sdiod_regrw_helper(struct brcmf_sdio_dev *sdiodev, u32 addr, u8 regsz, void *data, bool write) {
 u8 func;
 s32 retry = 0;
 int ret;

 if (sdiodev->state == BRCMF_SDIOD_NOMEDIUM)
  return -ENOMEDIUM;







 if ((addr & ~REG_F0_REG_MASK) == 0)
  func = SDIO_FUNC_0;
 else
  func = SDIO_FUNC_1;

 do {
  if (!write)
   memset(data, 0, regsz);

  if (retry)
   usleep_range(1000, 2000);
  ret = brcmf_sdiod_request_data(sdiodev, func, addr, regsz,
            data, write);
 } while (ret != 0 && ret != -ENOMEDIUM &&
   retry++ < SDIOH_API_ACCESS_RETRY_LIMIT);

 if (ret == -ENOMEDIUM)
  brcmf_sdiod_change_state(sdiodev, BRCMF_SDIOD_NOMEDIUM);
 else if (ret != 0) {





  if (addr != SBSDIO_FUNC1_SLEEPCSR)
   brcmf_err("failed to %s data F%d@0x%05x, err: %d\n",
      write ? "write" : "read", func, addr, ret);
  else
   brcmf_dbg(SDIO, "failed to %s data F%d@0x%05x, err: %d\n",
      write ? "write" : "read", func, addr, ret);
 }
 return ret;
}
