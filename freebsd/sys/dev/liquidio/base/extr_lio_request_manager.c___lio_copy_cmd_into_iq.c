
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lio_instr_queue {int* base_addr; int host_write_index; scalar_t__ iqcmd_64B; } ;


 int memcpy (int*,int*,int) ;

__attribute__((used)) static inline void
__lio_copy_cmd_into_iq(struct lio_instr_queue *iq, uint8_t *cmd)
{
 uint8_t *iqptr, cmdsize;

 cmdsize = ((iq->iqcmd_64B) ? 64 : 32);
 iqptr = iq->base_addr + (cmdsize * iq->host_write_index);

 memcpy(iqptr, cmd, cmdsize);
}
