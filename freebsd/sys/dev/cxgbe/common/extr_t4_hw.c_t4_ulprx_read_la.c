
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct adapter {int dummy; } ;


 int A_ULP_RX_LA_CTL ;
 int A_ULP_RX_LA_RDDATA ;
 int A_ULP_RX_LA_RDPTR ;
 int A_ULP_RX_LA_WRPTR ;
 unsigned int ULPRX_LA_SIZE ;
 void* t4_read_reg (struct adapter*,int ) ;
 int t4_write_reg (struct adapter*,int ,unsigned int) ;

void t4_ulprx_read_la(struct adapter *adap, u32 *la_buf)
{
 unsigned int i, j;

 for (i = 0; i < 8; i++) {
  u32 *p = la_buf + i;

  t4_write_reg(adap, A_ULP_RX_LA_CTL, i);
  j = t4_read_reg(adap, A_ULP_RX_LA_WRPTR);
  t4_write_reg(adap, A_ULP_RX_LA_RDPTR, j);
  for (j = 0; j < ULPRX_LA_SIZE; j++, p += 8)
   *p = t4_read_reg(adap, A_ULP_RX_LA_RDDATA);
 }
}
