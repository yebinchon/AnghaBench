
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pccard_function {scalar_t__ pf_ccr_offset; int pf_ccrh; int pf_ccrt; } ;


 int bus_space_read_1 (int ,int ,scalar_t__) ;

__attribute__((used)) static int
pccard_ccr_read(struct pccard_function *pf, int ccr)
{
 return (bus_space_read_1(pf->pf_ccrt, pf->pf_ccrh,
     pf->pf_ccr_offset + ccr));
}
