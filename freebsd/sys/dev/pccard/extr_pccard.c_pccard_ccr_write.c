
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_function {int ccr_mask; scalar_t__ pf_ccr_offset; int pf_ccrh; int pf_ccrt; } ;


 int bus_space_write_1 (int ,int ,scalar_t__,int) ;

__attribute__((used)) static void
pccard_ccr_write(struct pccard_function *pf, int ccr, int val)
{
 if ((pf->ccr_mask) & (1 << (ccr / 2))) {
  bus_space_write_1(pf->pf_ccrt, pf->pf_ccrh,
      pf->pf_ccr_offset + ccr, val);
 }
}
