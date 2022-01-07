
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int dummy; } ;


 int SBDSP_STATUS ;
 int ess_rd (struct ess_info*,int ) ;

__attribute__((used)) static int
ess_dspready(struct ess_info *sc)
{
 return ((ess_rd(sc, SBDSP_STATUS) & 0x80) == 0);
}
