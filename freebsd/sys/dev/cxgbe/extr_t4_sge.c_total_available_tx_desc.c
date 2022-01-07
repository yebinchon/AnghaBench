
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ u_int ;
struct sge_eq {scalar_t__ pidx; int sidx; } ;


 scalar_t__ IDXDIFF (scalar_t__,scalar_t__,int ) ;
 scalar_t__ read_hw_cidx (struct sge_eq*) ;

__attribute__((used)) static inline u_int
total_available_tx_desc(struct sge_eq *eq)
{
 uint16_t hw_cidx, pidx;

 hw_cidx = read_hw_cidx(eq);
 pidx = eq->pidx;

 if (pidx == hw_cidx)
  return (eq->sidx - 1);
 else
  return (IDXDIFF(hw_cidx, pidx, eq->sidx) - 1);
}
