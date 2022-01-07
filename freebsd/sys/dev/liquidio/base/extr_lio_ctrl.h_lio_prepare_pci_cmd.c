
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union lio_instr_64B {int dummy; } lio_instr_64B ;
typedef union lio_cmd_setup {int dummy; } lio_cmd_setup ;
typedef int uint32_t ;
struct octeon_device {int dummy; } ;


 int lio_prepare_pci_cmd_o3 (struct octeon_device*,union lio_instr_64B*,union lio_cmd_setup*,int ) ;

__attribute__((used)) static inline void
lio_prepare_pci_cmd(struct octeon_device *oct, union lio_instr_64B *cmd,
      union lio_cmd_setup *setup, uint32_t tag)
{

 lio_prepare_pci_cmd_o3(oct, cmd, setup, tag);
}
