
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tp_usm_stats {int frames; int drops; int octets; } ;
struct adapter {int dummy; } ;


 int A_TP_MIB_USM_PKTS ;
 int t4_tp_mib_read (struct adapter*,int*,int,int ,int) ;

void t4_get_usm_stats(struct adapter *adap, struct tp_usm_stats *st,
        bool sleep_ok)
{
 u32 val[4];

 t4_tp_mib_read(adap, val, 4, A_TP_MIB_USM_PKTS, sleep_ok);

 st->frames = val[0];
 st->drops = val[1];
 st->octets = ((u64)val[2] << 32) | val[3];
}
