
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int USECS_IN_SECOND ;

__attribute__((used)) static uint64_t
bbr_get_bw_delay_prod(uint64_t rtt, uint64_t bw) {
 uint64_t usec_per_sec;

 usec_per_sec = USECS_IN_SECOND;
 return ((rtt * bw) / usec_per_sec);
}
