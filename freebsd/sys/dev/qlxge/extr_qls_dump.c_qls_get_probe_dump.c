
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int qla_host_t ;


 int FC_CLOCK ;
 int PCI_CLOCK ;
 int SYS_CLOCK ;
 int XGM_CLOCK ;
 int * qls_get_probe (int *,int ,int*,int *) ;
 int qls_wr_mpi_reg (int *,int,int) ;

__attribute__((used)) static int
qls_get_probe_dump(qla_host_t *ha, uint32_t *buf)
{

 uint8_t sys_clock_valid_modules[0x20] = {
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  0,
  1,
  1,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
 };


 uint8_t pci_clock_valid_modules[0x20] = {
  1,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
 };


 uint8_t xgm_clock_valid_modules[0x20] = {
  1,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  1,
  0,
  0,
  1,
  1,
  1,
  0,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
 };

 uint8_t fc_clock_valid_modules[0x20] = {
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
 };

 qls_wr_mpi_reg(ha, 0x100e, 0x18a20000);

 buf = qls_get_probe(ha, SYS_CLOCK, sys_clock_valid_modules, buf);

 buf = qls_get_probe(ha, PCI_CLOCK, pci_clock_valid_modules, buf);

 buf = qls_get_probe(ha, XGM_CLOCK, xgm_clock_valid_modules, buf);

 buf = qls_get_probe(ha, FC_CLOCK, fc_clock_valid_modules, buf);

 return(0);
}
