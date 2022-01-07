
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int u8 ;
struct sdio_func {int dummy; } ;


 scalar_t__ SDIO_CCCR_ABORT ;
 scalar_t__ SDIO_CCCR_IENx ;
 int sdio_f0_writeb (struct sdio_func*,int ,scalar_t__,int*) ;
 int sdio_writeb (struct sdio_func*,int ,scalar_t__,int*) ;

__attribute__((used)) static inline int brcmf_sdiod_f0_writeb(struct sdio_func *func,
     uint regaddr, u8 byte) {
 int err_ret;






 if ((regaddr == SDIO_CCCR_ABORT) ||
     (regaddr == SDIO_CCCR_IENx))
  sdio_writeb(func, byte, regaddr, &err_ret);
 else
  sdio_f0_writeb(func, byte, regaddr, &err_ret);

 return err_ret;
}
