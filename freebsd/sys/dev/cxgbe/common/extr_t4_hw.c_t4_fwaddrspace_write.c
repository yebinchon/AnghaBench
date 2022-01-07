
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {void* val; void* addr; } ;
struct TYPE_4__ {TYPE_1__ addrval; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_LDST_ADDRSPC_FIRMWARE ;
 int FW_LDST_CMD ;
 int FW_LEN16 (struct fw_ldst_cmd) ;
 int F_FW_CMD_REQUEST ;
 int F_FW_CMD_WRITE ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_LDST_CMD_ADDRSPACE (int ) ;
 void* cpu_to_be32 (int) ;
 int memset (struct fw_ldst_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_ldst_cmd*,int,int *) ;

int t4_fwaddrspace_write(struct adapter *adap, unsigned int mbox,
     u32 addr, u32 val)
{
 u32 ldst_addrspace;
 struct fw_ldst_cmd c;

 memset(&c, 0, sizeof(c));
 ldst_addrspace = V_FW_LDST_CMD_ADDRSPACE(FW_LDST_ADDRSPC_FIRMWARE);
 c.op_to_addrspace = cpu_to_be32(V_FW_CMD_OP(FW_LDST_CMD) |
     F_FW_CMD_REQUEST |
     F_FW_CMD_WRITE |
     ldst_addrspace);
 c.cycles_to_len16 = cpu_to_be32(FW_LEN16(c));
 c.u.addrval.addr = cpu_to_be32(addr);
 c.u.addrval.val = cpu_to_be32(val);

 return t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
}
