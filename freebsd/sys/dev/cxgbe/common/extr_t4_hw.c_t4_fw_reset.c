
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_reset_cmd {int val; } ;
struct adapter {int dummy; } ;
typedef int c ;


 int INIT_CMD (struct fw_reset_cmd,int ,int ) ;
 int RESET ;
 int WRITE ;
 int cpu_to_be32 (int) ;
 int memset (struct fw_reset_cmd*,int ,int) ;
 int t4_wr_mbox (struct adapter*,unsigned int,struct fw_reset_cmd*,int,int *) ;

int t4_fw_reset(struct adapter *adap, unsigned int mbox, int reset)
{
 struct fw_reset_cmd c;

 memset(&c, 0, sizeof(c));
 INIT_CMD(c, RESET, WRITE);
 c.val = cpu_to_be32(reset);
 return t4_wr_mbox(adap, mbox, &c, sizeof(c), ((void*)0));
}
