
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int FW_CMD_MAX_TIMEOUT ;
 int t4_wr_mbox_meat_timeout (struct adapter*,int,void const*,int,void*,int,int ) ;

int t4_wr_mbox_meat(struct adapter *adap, int mbox, const void *cmd, int size,
      void *rpl, bool sleep_ok)
{
  return t4_wr_mbox_meat_timeout(adap, mbox, cmd, size, rpl,
            sleep_ok, FW_CMD_MAX_TIMEOUT);

}
