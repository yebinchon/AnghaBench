
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct htcp {scalar_t__ last_cong; } ;


 scalar_t__ sctp_get_tick_count () ;

__attribute__((used)) static inline uint32_t
htcp_cong_time(struct htcp *ca)
{
 return (sctp_get_tick_count() - ca->last_cong);
}
