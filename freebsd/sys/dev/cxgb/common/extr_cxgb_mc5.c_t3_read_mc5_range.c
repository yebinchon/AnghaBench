
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mc5 {scalar_t__ part_type; int * adapter; } ;
typedef int adapter_t ;


 int A_MC5_DB_DBGI_REQ_ADDR0 ;
 int EINVAL ;
 int EIO ;
 int IDT4_CMD_READ ;
 scalar_t__ IDT75N43102 ;
 scalar_t__ IDT75P52100 ;
 int IDT_CMD_READ ;
 int dbgi_rd_rsp3 (int *,int *,int *,int *) ;
 scalar_t__ mc5_cmd_write (int *,int ) ;
 int mc5_dbgi_mode_disable (struct mc5 const*) ;
 int mc5_dbgi_mode_enable (struct mc5 const*) ;
 int t3_write_reg (int *,int ,int ) ;

int t3_read_mc5_range(const struct mc5 *mc5, unsigned int start,
        unsigned int n, u32 *buf)
{
 u32 read_cmd;
 int err = 0;
 adapter_t *adap = mc5->adapter;

 if (mc5->part_type == IDT75P52100)
  read_cmd = IDT_CMD_READ;
 else if (mc5->part_type == IDT75N43102)
  read_cmd = IDT4_CMD_READ;
 else
  return -EINVAL;

 mc5_dbgi_mode_enable(mc5);

 while (n--) {
  t3_write_reg(adap, A_MC5_DB_DBGI_REQ_ADDR0, start++);
  if (mc5_cmd_write(adap, read_cmd)) {
   err = -EIO;
   break;
  }
  dbgi_rd_rsp3(adap, buf + 2, buf + 1, buf);
  buf += 3;
 }

 mc5_dbgi_mode_disable(mc5);
 return err;
}
