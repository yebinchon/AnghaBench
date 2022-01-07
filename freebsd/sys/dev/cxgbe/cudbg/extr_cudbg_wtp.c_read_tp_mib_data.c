
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct tp_mib_data {int dummy; } ;
struct cudbg_init {struct adapter* adap; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {scalar_t__ addr; int value; } ;


 size_t TP_MIB_SIZE ;
 int t4_tp_mib_read (struct adapter*,int *,int,size_t,int) ;
 TYPE_1__* tp_mib ;

__attribute__((used)) static u32 read_tp_mib_data(struct cudbg_init *pdbg_init,
       struct tp_mib_data **ppTp_Mib)
{
 struct adapter *padap = pdbg_init->adap;
 u32 i = 0;

 for (i = 0; i < TP_MIB_SIZE; i++) {
  t4_tp_mib_read(padap, &tp_mib[i].value, 1,
      (u32)tp_mib[i].addr, 1);
 }
 *ppTp_Mib = (struct tp_mib_data *)&tp_mib[0];

 return 0;
}
