
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {scalar_t__ num_oqs; } ;


 int LIO_CHIP_CONF (struct octeon_device*,int ) ;
 scalar_t__ LIO_CN23XX_PF (struct octeon_device*) ;
 int LIO_GET_DEF_RX_BUF_SIZE_CFG (int ) ;
 int LIO_GET_NUM_DEF_RX_DESCS_CFG (int ) ;
 int cn23xx_pf ;
 scalar_t__ lio_init_droq (struct octeon_device*,int ,int ,int ,int *) ;

int
lio_setup_output_queue0(struct octeon_device *oct)
{
 uint32_t desc_size = 0, num_descs = 0, oq_no = 0;

 if (LIO_CN23XX_PF(oct)) {
  num_descs =
   LIO_GET_NUM_DEF_RX_DESCS_CFG(LIO_CHIP_CONF(oct,
           cn23xx_pf));
  desc_size =
   LIO_GET_DEF_RX_BUF_SIZE_CFG(LIO_CHIP_CONF(oct,
          cn23xx_pf));
 }

 oct->num_oqs = 0;

 if (lio_init_droq(oct, oq_no, num_descs, desc_size, ((void*)0))) {
  return (1);
 }

 oct->num_oqs++;

 return (0);
}
