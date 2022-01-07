
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int mbox; } ;


 int t4_wr_mbox (struct adapter*,int ,void const*,int,void*) ;

__attribute__((used)) static inline int t4vf_wr_mbox(struct adapter *adap, const void *cmd,
          int size, void *rpl)
{
 return t4_wr_mbox(adap, adap->mbox, cmd, size, rpl);
}
