
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tp_fcoe_stats {int frames_ddp; int frames_drop; int octets_ddp; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_TP_MIB_FCOE_BYTE_0_HI ;
 scalar_t__ A_TP_MIB_FCOE_DDP_0 ;
 scalar_t__ A_TP_MIB_FCOE_DROP_0 ;
 int t4_tp_mib_read (struct adapter*,int*,int,scalar_t__,int) ;

void t4_get_fcoe_stats(struct adapter *adap, unsigned int idx,
         struct tp_fcoe_stats *st, bool sleep_ok)
{
 u32 val[2];

 t4_tp_mib_read(adap, &st->frames_ddp, 1, A_TP_MIB_FCOE_DDP_0 + idx,
         sleep_ok);

 t4_tp_mib_read(adap, &st->frames_drop, 1,
         A_TP_MIB_FCOE_DROP_0 + idx, sleep_ok);

 t4_tp_mib_read(adap, val, 2, A_TP_MIB_FCOE_BYTE_0_HI + 2 * idx,
         sleep_ok);

 st->octets_ddp = ((u64)val[0] << 32) | val[1];
}
