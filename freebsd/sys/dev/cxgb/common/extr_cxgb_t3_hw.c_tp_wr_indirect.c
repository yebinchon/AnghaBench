
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int adapter_t ;


 int A_TP_PIO_ADDR ;
 int A_TP_PIO_DATA ;
 int t3_write_reg (int *,int ,unsigned int) ;

__attribute__((used)) static inline void tp_wr_indirect(adapter_t *adap, unsigned int addr, u32 val)
{
 t3_write_reg(adap, A_TP_PIO_ADDR, addr);
 t3_write_reg(adap, A_TP_PIO_DATA, val);
}
