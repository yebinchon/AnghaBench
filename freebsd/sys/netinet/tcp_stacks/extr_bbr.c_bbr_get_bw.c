
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tcp_bbr {int dummy; } ;


 int __bbr_get_bw (struct tcp_bbr*) ;

__attribute__((used)) static inline uint64_t
bbr_get_bw(struct tcp_bbr *bbr)
{
 uint64_t bw;

 bw = __bbr_get_bw(bbr);
 return (bw);
}
