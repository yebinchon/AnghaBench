
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_3__ {int pid; unsigned int did; unsigned int boffset; unsigned int blen; int data; } ;
struct TYPE_4__ {TYPE_1__ i2c; } ;
struct fw_ldst_cmd {TYPE_2__ u; void* cycles_to_len16; void* op_to_addrspace; } ;
struct adapter {int dummy; } ;


 int EINVAL ;
 int FW_LDST_ADDRSPC_I2C ;
 int FW_LDST_CMD ;
 int FW_LEN16 (struct fw_ldst_cmd) ;
 int F_FW_CMD_READ ;
 int F_FW_CMD_REQUEST ;
 int V_FW_CMD_OP (int ) ;
 int V_FW_LDST_CMD_ADDRSPACE (int ) ;
 void* cpu_to_be32 (int) ;
 int memcpy (int *,int ,unsigned int) ;
 int memset (struct fw_ldst_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_ldst_cmd*,int,struct fw_ldst_cmd*) ;

int t4_i2c_rd(struct adapter *adap, unsigned int mbox,
       int port, unsigned int devid,
       unsigned int offset, unsigned int len,
       u8 *buf)
{
 u32 ldst_addrspace;
 struct fw_ldst_cmd ldst;
 int ret;

 if (port >= 4 ||
     devid >= 256 ||
     offset >= 256 ||
     len > sizeof ldst.u.i2c.data)
  return -EINVAL;

 memset(&ldst, 0, sizeof ldst);
 ldst_addrspace = V_FW_LDST_CMD_ADDRSPACE(FW_LDST_ADDRSPC_I2C);
 ldst.op_to_addrspace =
  cpu_to_be32(V_FW_CMD_OP(FW_LDST_CMD) |
       F_FW_CMD_REQUEST |
       F_FW_CMD_READ |
       ldst_addrspace);
 ldst.cycles_to_len16 = cpu_to_be32(FW_LEN16(ldst));
 ldst.u.i2c.pid = (port < 0 ? 0xff : port);
 ldst.u.i2c.did = devid;
 ldst.u.i2c.boffset = offset;
 ldst.u.i2c.blen = len;
 ret = t4_wr_mbox(adap, mbox, &ldst, sizeof ldst, &ldst);
 if (!ret)
  memcpy(buf, ldst.u.i2c.data, len);
 return ret;
}
