
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sge_qstat {int cidx; } ;
struct sge_eq {size_t sidx; int * desc; } ;


 int be16toh (int ) ;

__attribute__((used)) static inline uint16_t
read_hw_cidx(struct sge_eq *eq)
{
 struct sge_qstat *spg = (void *)&eq->desc[eq->sidx];
 uint16_t cidx = spg->cidx;

 return (be16toh(cidx));
}
