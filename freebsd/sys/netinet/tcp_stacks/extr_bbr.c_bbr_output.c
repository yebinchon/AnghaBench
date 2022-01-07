
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct tcpcb {int t_inpcb; scalar_t__ t_fb_ptr; } ;
struct tcp_bbr {int dummy; } ;
typedef int int32_t ;


 int INP_WLOCK_ASSERT (int ) ;
 int bbr_output_wtime (struct tcpcb*,struct timeval*) ;
 int tcp_get_usecs (struct timeval*) ;

__attribute__((used)) static int
bbr_output(struct tcpcb *tp)
{
 int32_t ret;
 struct timeval tv;
 struct tcp_bbr *bbr;

 bbr = (struct tcp_bbr *)tp->t_fb_ptr;
 INP_WLOCK_ASSERT(tp->t_inpcb);
 (void)tcp_get_usecs(&tv);
 ret = bbr_output_wtime(tp, &tv);
 return (ret);
}
