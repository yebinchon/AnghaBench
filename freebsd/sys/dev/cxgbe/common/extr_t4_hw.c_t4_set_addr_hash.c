
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {int hashvec; } ;
struct TYPE_4__ {TYPE_1__ hash; } ;
struct fw_vi_mac_cmd {TYPE_2__ u; void* freemacs_to_len16; void* op_to_viid; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int FW_VI_MAC_CMD ;
 int FW_VI_MAC_TYPE_HASHVEC ;
 int F_FW_CMD_REQUEST ;
 int F_FW_CMD_WRITE ;
 int V_FW_CMD_LEN16 (int) ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_VI_ENABLE_CMD_VIID (unsigned int) ;
 int V_FW_VI_MAC_CMD_ENTRY_TYPE (int ) ;
 int V_FW_VI_MAC_CMD_HASHUNIEN (int) ;
 void* cpu_to_be32 (int) ;
 int cpu_to_be64 (int ) ;
 int memset (struct fw_vi_mac_cmd*,int ,int) ;
 int t4_wr_mbox_meat (struct adapter*,unsigned int,struct fw_vi_mac_cmd*,int,int *,int) ;

int t4_set_addr_hash(struct adapter *adap, unsigned int mbox, unsigned int viid,
       bool ucast, u64 vec, bool sleep_ok)
{
 struct fw_vi_mac_cmd c;
 u32 val;

 memset(&c, 0, sizeof(c));
 c.op_to_viid = cpu_to_be32(V_FW_CMD_OP(FW_VI_MAC_CMD) |
       F_FW_CMD_REQUEST | F_FW_CMD_WRITE |
       V_FW_VI_ENABLE_CMD_VIID(viid));
 val = V_FW_VI_MAC_CMD_ENTRY_TYPE(FW_VI_MAC_TYPE_HASHVEC) |
       V_FW_VI_MAC_CMD_HASHUNIEN(ucast) | V_FW_CMD_LEN16(1);
 c.freemacs_to_len16 = cpu_to_be32(val);
 c.u.hash.hashvec = cpu_to_be64(vec);
 return t4_wr_mbox_meat(adap, mbox, &c, sizeof(c), ((void*)0), sleep_ok);
}
