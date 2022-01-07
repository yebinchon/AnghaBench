
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct sge_eq {int sidx; int cidx; } ;


 int IDXDIFF (int ,int ,int ) ;
 int read_hw_cidx (struct sge_eq*) ;

__attribute__((used)) static inline u_int
reclaimable_tx_desc(struct sge_eq *eq)
{
 uint16_t hw_cidx;

 hw_cidx = read_hw_cidx(eq);
 return (IDXDIFF(hw_cidx, eq->cidx, eq->sidx));
}
