
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int dummy; } ;


 int t4_wr_mbox_meat_timeout (struct adapter*,int,void const*,int,void*,int,int) ;

__attribute__((used)) static inline int t4_wr_mbox_timeout(struct adapter *adap, int mbox,
         const void *cmd, int size, void *rpl,
         int timeout)
{
 return t4_wr_mbox_meat_timeout(adap, mbox, cmd, size, rpl, 1,
           timeout);
}
