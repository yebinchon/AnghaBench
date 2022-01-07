
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adapter_t ;


 int A_TP_PIO_ADDR ;
 int A_TP_PIO_DATA ;
 unsigned int t3_read_reg (int *,int ) ;
 int t3_write_reg (int *,int ,unsigned int) ;

__attribute__((used)) static void tp_wr_bits_indirect(adapter_t *adap, unsigned int addr,
    unsigned int mask, unsigned int val)
{
 t3_write_reg(adap, A_TP_PIO_ADDR, addr);
 val |= t3_read_reg(adap, A_TP_PIO_DATA) & ~mask;
 t3_write_reg(adap, A_TP_PIO_DATA, val);
}
