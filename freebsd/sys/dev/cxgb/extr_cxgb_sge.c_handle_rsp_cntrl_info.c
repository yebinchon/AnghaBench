
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sge_qset {TYPE_1__* txq; } ;
struct TYPE_2__ {unsigned int processed; int flags; } ;


 int F_RSPD_TXQ0_GTS ;
 int F_RSPD_TXQ1_GTS ;
 unsigned int G_RSPD_TXQ0_CR (int) ;
 unsigned int G_RSPD_TXQ1_CR (int) ;
 unsigned int G_RSPD_TXQ2_CR (int) ;
 size_t TXQ_CTRL ;
 size_t TXQ_ETH ;
 size_t TXQ_OFLD ;
 int TXQ_RUNNING ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static __inline void
handle_rsp_cntrl_info(struct sge_qset *qs, uint32_t flags)
{
 unsigned int credits;





 credits = G_RSPD_TXQ0_CR(flags);
 if (credits)
  qs->txq[TXQ_ETH].processed += credits;

 credits = G_RSPD_TXQ2_CR(flags);
 if (credits)
  qs->txq[TXQ_CTRL].processed += credits;





 credits = G_RSPD_TXQ1_CR(flags);
 if (credits)
  qs->txq[TXQ_OFLD].processed += credits;

}
