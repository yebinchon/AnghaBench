
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpcb {int dummy; } ;
struct tcp_bbr {int dummy; } ;
struct bbr_sendmap {int dummy; } ;
typedef int int32_t ;


 int TCPSTAT_ADD (int ,int ) ;
 int TCPSTAT_INC (int ) ;
 int tcps_sndbyte_error ;
 int tcps_sndpack_error ;

__attribute__((used)) static inline void
bbr_do_error_accounting(struct tcpcb *tp, struct tcp_bbr *bbr, struct bbr_sendmap *rsm, int32_t len, int32_t error)
{




}
