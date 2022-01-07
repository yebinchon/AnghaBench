
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scc_bas {int dummy; } ;


 scalar_t__ REG_CTRL ;
 int scc_barrier (struct scc_bas*) ;
 int scc_getreg (struct scc_bas*,scalar_t__) ;
 int scc_setreg (struct scc_bas*,scalar_t__,int) ;

__attribute__((used)) static __inline uint8_t
scc_getmreg(struct scc_bas *bas, int ch, int reg)
{

 scc_setreg(bas, ch + REG_CTRL, reg);
 scc_barrier(bas);
 return (scc_getreg(bas, ch + REG_CTRL));
}
