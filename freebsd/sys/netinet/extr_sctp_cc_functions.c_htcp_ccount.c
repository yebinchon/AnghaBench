
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct htcp {int minRTT; } ;


 int htcp_cong_time (struct htcp*) ;

__attribute__((used)) static inline uint32_t
htcp_ccount(struct htcp *ca)
{
 return (htcp_cong_time(ca) / ca->minRTT);
}
